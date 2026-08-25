# Third-party notices

This repository does not vendor third-party skill content (FR-10.5): every
skill under `.claude/skills/` that isn't first-party is a symlink into a git
submodule, or generated locally from the developer's own Xcode install —
see [`.claude/skills/README.md`](.claude/skills/README.md) for the mechanism
and provenance table. Nothing there is redistributed by this repository's
own git history. This file exists because MIT still requires its copyright
notice to travel with anyone who ends up with a copy of the code — including
a submodule checkout most contributors won't open by hand.

## `ui-review-tahoe`, `liquid-glass`

Source: [rshankras/claude-code-apple-skills](https://github.com/rshankras/claude-code-apple-skills),
obtained via the `.claude/skills-src/claude-code-apple-skills` git submodule
(pinned to its `pre-overhaul-2026-07` tag), not copied into this repository.

```
MIT License

Copyright (c) 2025 Ravishankar

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## `photokit`, `vision-framework`, `swiftdata`, `swiftui-patterns`,
## `swiftui-uikit-interop`, `background-processing`, `ios-accessibility`,
## `ios-localization`, `swift-concurrency`, `app-store-review`

Source: [dpearson2699/swift-ios-skills](https://github.com/dpearson2699/swift-ios-skills),
obtained via the `.claude/skills-src/swift-ios-skills` git submodule — not
vendored, so cloning this repository with submodules fetches that upstream
repository directly, under its own license.

```
Required Notice: Copyright (c) 2025 dpearson2699 (https://github.com/dpearson2699)

PolyForm Perimeter License 1.0.0
<https://polyformproject.org/licenses/perimeter/1.0.0>
```

The full license text is in that submodule's own `LICENSE` file. It permits
any use except building a competing product; Alpenglow does not compete with
a Claude Code skills collection, so this applies without restriction here.

## `mfm-spec-local`

Source: [MadeForMachine/mfm-skills](https://github.com/MadeForMachine/mfm-skills),
obtained via the `.claude/skills-src/mfm-skills` git submodule (pinned to commit
`0360a1f`, since that repository publishes no tags to track), not copied into
this repository. The repository's root `LICENSE` covers every skill in it, and
`skills/mfm-spec-local/LICENSE` repeats it verbatim for the skill alone.

```
MIT License

Copyright (c) 2026 MadeForMachine

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## `swiftui-specialist`, `swiftui-whats-new-27`

Source: Apple, generated locally on each developer's own machine by
`.claude/hooks/apple-skills-export.sh` running `xcrun agent skills export`
against their own licensed Xcode 27 install. These directories are
gitignored and never enter this repository's git history — the previous
version of this project vendored a point-in-time copy of Apple's export
output, which was a redistribution-rights question with no clear answer;
switching to generating it fresh, locally, from tooling every contributor
building this project already has removes the question rather than
answering it. There is nothing to attribute here because nothing from Apple
is ever committed.
