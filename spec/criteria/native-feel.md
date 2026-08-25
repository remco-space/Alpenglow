---
id: native-feel
title: It belongs on the platform it runs on
kind: criterion
statement: The system follows the platform's own conventions rather than inventing its own.
scope:
  system: true
strength: required
status: decided
---

## Why
Deferring to the platform's published guidance is what keeps the product feeling like
it belongs without this specification restating — and then having to maintain — rules
the platform vendor already publishes and revises every release.

## Guidance
- Every action exists as a named command, not only as a gesture, a right-click, or an
  unlabeled icon; a name is what makes it discoverable, keyboard-reachable and
  speakable to assistive technology at once.
- Hover text may enrich an icon's meaning but never carry it alone, being invisible to
  keyboard, touch, and assistive technology.
- Return the user where they left off, including a comparison left half-made.
- Remain fully usable with assistive technology, larger text, and reduced motion,
  transparency, or increased contrast.

## Avoid
- Anything essential reachable only by a gesture the user would have to guess.
- Platform-specific behavior appearing where the platform cannot support it, which
  sends the user hunting for a control that cannot exist.

## Assessment
For each feature, ask whether every action it offers can be named, reached without a
pointer, and understood without hovering.
