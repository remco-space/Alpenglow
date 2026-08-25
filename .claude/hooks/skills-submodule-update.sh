#!/usr/bin/env bash
#
# SessionStart hook — keep the .claude/skills-src/* submodules current, but
# only up to each one's latest tagged release, not the branch tip.
#
# Why this exists (FR-10.5): third-party skill content is never vendored
# into this repository — it's obtained from upstream via these submodules,
# with the symlinks in .claude/skills/ pointing into them (see
# .claude/skills/README.md for the full provenance table).
#
# Why tags, not `--remote` branch tip: SKILL.md content is loaded straight
# into the assistant's context as instructions. Fast-forwarding to whatever
# an arbitrary commit on upstream's default branch happens to be would mean
# unreviewed third-party content (or a compromised commit) reaching context
# with no human in the loop. A tagged release is a discrete, named point the
# upstream maintainer stood behind — bounded exposure, still automatic.
#
# Tags are ranked by creation date, not by parsing them as semver: swift-ios-skills
# uses "v*" version tags, but claude-code-apple-skills uses named milestone
# tags (e.g. "pre-overhaul-2026-07") that don't sort as versions. Creation
# order is the one ordering that means "latest" for both.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"

MESSAGES=()

update_submodule() {  # $1 = path relative to repo root, $2 = human name for messages
  local sub="$REPO_ROOT/$1" name="$2"
  [ -d "$sub/.git" ] || return 0   # submodule not checked out — nothing to do

  # Best-effort: any network failure here is silent, not fatal to session start.
  git -C "$sub" fetch --tags --quiet origin >/dev/null 2>&1 || return 0

  local latest_tag
  latest_tag="$(git -C "$sub" tag -l --sort=-creatordate | head -1)"
  [ -n "$latest_tag" ] || return 0

  local before target
  before="$(git -C "$sub" rev-parse HEAD 2>/dev/null || true)"
  target="$(git -C "$sub" rev-parse "$latest_tag" 2>/dev/null || true)"
  [ -n "$target" ] || return 0

  [ "$before" = "$target" ] && return 0   # already on the latest release — silent

  git -C "$sub" checkout --quiet "$latest_tag" -- . 2>/dev/null || return 0
  git -C "$sub" checkout --quiet "$latest_tag" 2>/dev/null || return 0

  MESSAGES+=("🔄 $name advanced to $latest_tag — new SKILL.md content is live this session. Run 'git -C $1 log --oneline ${before:0:7}..${target:0:7}' to see what changed.")
}

update_submodule ".claude/skills-src/swift-ios-skills" "swift-ios-skills"
update_submodule ".claude/skills-src/claude-code-apple-skills" "claude-code-apple-skills"

# mfm-skills publishes no git tags at all (checked at 0360a1f, Aug 2026): it
# versions each skill in its SKILL.md frontmatter instead — mfm-spec-local
# carries `version: 0.8.2`. The `[ -n "$latest_tag" ] || return 0` guard above
# therefore makes this call a silent no-op, and the submodule simply stays on
# the commit this repository pins. That is the correct outcome, not a gap to
# work around: the rule this hook exists to enforce is that no unreviewed
# third-party instruction text reaches context automatically, and "never moves"
# satisfies it more strictly than "moves to tagged releases" does. Registering
# it here anyway means the day upstream cuts its first release, this skill
# starts tracking releases on its own with no edit here. Advancing the pin
# before then is a deliberate act: bump it with `git -C
# .claude/skills-src/mfm-skills checkout <commit>` after reading the diff.
update_submodule ".claude/skills-src/mfm-skills" "mfm-skills"

if [ "${#MESSAGES[@]}" -gt 0 ]; then
  printf '%s\n' "${MESSAGES[@]}" | python3 -c '
import json, sys
print(json.dumps({"systemMessage": "\n".join(line.rstrip("\n") for line in sys.stdin)}))
'
fi
exit 0
