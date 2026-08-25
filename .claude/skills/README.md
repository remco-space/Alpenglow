# Project skills (project-scoped)

These skills apply only to Alpenglow. Claude Code discovers them at startup —
after adding or changing skills here, restart Claude Code (or `/clear`) to pick
them up.

Nothing here is vendored (FR-10.5): no third-party skill content is tracked
in this repository, whatever its license. Every skill under `.claude/skills/`
is either first-party (written for this project) or a symlink obtained at
session start from wherever its author publishes it. Two provenance styles
cover the obtained ones:

- **Live symlink into a submodule** (`swift-ios-skills`,
  `claude-code-apple-skills` and `mfm-skills` rows below): the target lives in a
  `.claude/skills-src/*` git submodule, which
  `.claude/hooks/skills-submodule-update.sh` advances to that submodule's
  latest **tagged release** (not the branch tip) on every `SessionStart`
  (wired via the committed `.claude/settings.json`). SKILL.md content loads
  straight into the assistant's context as instructions, so the hook bounds
  exposure to named releases the upstream maintainer stood behind rather than
  arbitrary commits. These stay current with no manual refresh step; if a
  release ever regresses, `git -C .claude/skills-src/<name> log --oneline`
  shows what changed and `git checkout <tag>` in that submodule pins it back.
- **Exported fresh from the local Xcode toolchain** (`swiftui-specialist`,
  `swiftui-whats-new-27`): Apple's own content, published only via
  `xcrun agent skills export`, not a repository — there's nothing to point a
  submodule at. `.claude/hooks/apple-skills-export.sh` runs that command on
  `SessionStart` whenever the two directories are missing (a fresh clone, or
  after switching Xcode versions) and copies its output into place. Both
  directories are gitignored, so what's on disk always came from *this*
  machine's own licensed Xcode install, never from git.

## Provenance

| Skill | Source | License | Notes |
|-------|--------|---------|-------|
| `swiftui-specialist` | Apple, exported from Xcode 27 (`xcrun agent skills export`) | Apple toolchain | Authoritative SwiftUI patterns/perf. Obtained at session start, gitignored. |
| `swiftui-whats-new-27` | Apple, exported from Xcode 27 | Apple toolchain | SDK 27 SwiftUI changes (e.g. `@State` → macro). Obtained at session start, gitignored. |
| `ui-review-tahoe` | [rshankras/claude-code-apple-skills](https://github.com/rshankras/claude-code-apple-skills), `skills/macos/ui-review-tahoe` | MIT | macOS UI/UX + HIG-compliance review. Submodule symlink, auto-updates. |
| `liquid-glass` | [rshankras/claude-code-apple-skills](https://github.com/rshankras/claude-code-apple-skills), `skills/design/liquid-glass` | MIT | `.glassEffect()` design language, macOS 27. Submodule symlink, auto-updates. |
| `photokit` | [dpearson2699/swift-ios-skills](https://github.com/dpearson2699/swift-ios-skills) | see upstream repo | PhotosPicker/PHPhotoLibrary/media permissions — core to the scan/pick pipeline. Auto-updates. |
| `vision-framework` | dpearson2699/swift-ios-skills | see upstream repo | Modern Vision API, relevant to `ImageAnalyzer`. Auto-updates. |
| `swiftdata` | dpearson2699/swift-ios-skills | see upstream repo | `@Model`/`@Query`/migrations. Auto-updates. |
| `swiftui-patterns` | dpearson2699/swift-ios-skills | see upstream repo | `@Observable` ownership, state wiring, view decomposition. Auto-updates. |
| `swiftui-uikit-interop` | dpearson2699/swift-ios-skills | see upstream repo | `UIViewRepresentable`/`UIHostingController` bridging — relevant to the multiplatform (AppKit+UIKit) work. Auto-updates. |
| `background-processing` | dpearson2699/swift-ios-skills | see upstream repo | `BGTaskScheduler` registration/expiration. Auto-updates. |
| `ios-accessibility` | dpearson2699/swift-ios-skills | see upstream repo | VoiceOver/Dynamic Type/focus for the iOS side (complements `ui-review-tahoe`, which is macOS-only). Auto-updates. |
| `ios-localization` | dpearson2699/swift-ios-skills | see upstream repo | String Catalogs, pluralization, RTL. Auto-updates. |
| `swift-concurrency` | dpearson2699/swift-ios-skills | see upstream repo | Sendable/actor isolation, Swift 6 strict concurrency. Auto-updates. |
| `app-store-review` | dpearson2699/swift-ios-skills | see upstream repo | Submission readiness, privacy manifest — relevant once FR-10's manual release process gives way to distribution. Auto-updates. |
| `mfm-spec-local` | [MadeForMachine/mfm-skills](https://github.com/MadeForMachine/mfm-skills), `skills/mfm-spec-local` | MIT | Interrogates software intent into a typed spec graph of components/features/criteria as local files. Submodule symlink, **pinned** — see below. |

`ui-review-tahoe` and `liquid-glass` are pinned to `claude-code-apple-skills`'
`pre-overhaul-2026-07` tag — its only other tag (`wwdc25-era-final`) predates
it; there is no numbered-release scheme on that repo yet, so
`skills-submodule-update.sh` ranks tags by creation date rather than parsing
them as semver (unlike the `v*`-tagged `swift-ios-skills`).

`mfm-spec-local` is the one skill here that does **not** auto-update, because
`mfm-skills` publishes no git tags at all — it versions each skill in its
SKILL.md frontmatter instead (`version: 0.8.2` at the pinned commit,
`0360a1f`). The hook is wired for it regardless and no-ops on the missing tag,
so it starts tracking releases by itself if upstream ever cuts one; until then
the pin only moves when someone reads the diff and moves it. That is the strict
end of this section's rule, not an exception to it.

Its two siblings in that repo were deliberately left out. `mfm-spec` is the
same skill backed by a hosted MCP connector at `mcp.mfm.dev` — it would need an
account, OAuth and a live network for what `mfm-spec-local` does against local
files. FR-1.5 governs photo content rather than design notes, so it does not
forbid the hosted variant outright; it is the reason the local one is the
obvious default in a project built so that work stays on the machine, and
FR-9.3's works-with-no-network expectation is easier to keep with a skill that
never needed one. `atlas` queries a product-discovery service Alpenglow has no
use for. Don't add either speculatively.

License notices this vendoring-free setup still owes their authors —
`ui-review-tahoe` and `liquid-glass` are MIT, which requires the notice to
travel with copies even when the "copy" is a submodule most users won't open
— live in [`../../THIRD_PARTY_NOTICES.md`](../../THIRD_PARTY_NOTICES.md).
