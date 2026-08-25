---
id: interface-stability
title: The interface holds still
kind: criterion
statement: A control moves or resizes only as the direct result of the user's own act.
scope:
  system: true
strength: required
status: decided
---

## Why
The moment a target moves is usually the moment a hand is reaching for it. An
interface that rearranges itself while the user is working reads as broken even when
everything is working, and a calm frame is as much of feeling native as any control
style is.

## Guidance
- Whatever the system shows of its own accord while working leaves every control
  where and as large as it was.
- Show a wait at all only when it is long enough to notice; near-instant work
  finishes silently.
- An action that changes as work starts or settles changes in place, taking no
  neighbour with it.
- Keep room once granted: when a result will be replaced, leave the old one showing
  until the new one is ready rather than clearing the space and refilling it.

## Avoid
- Progress or status that appears by pushing controls aside.
- Clearing a summary before its replacement exists, which makes redoing something
  move everything.

## Assessment
For each feature, ask what appears while it works, and whether anything the user
might be reaching for is in a different place or size a moment later.
