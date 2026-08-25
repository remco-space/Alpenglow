---
id: judgment-durability
title: Invested judgment is never lost
kind: criterion
statement: Every decision the user has made survives quitting, updating, and being carried to another device.
scope:
  system: true
strength: required
status: open
open_questions:
  - What carries judgments between devices while the intended transport is unavailable?
---

## Why
The judgments are the only thing in the system that cannot be recomputed. Photos can
be re-found and rankings re-derived, but the hundreds of small comparisons the user
made one pair at a time exist nowhere else. Losing them is losing the product.

## Guidance
- Treat long-running work as resumable rather than restartable.
- When newer software cannot read what older software saved, say so and leave it
  intact rather than starting clean.

## Avoid
- Presenting lost work as an empty state, which makes "nothing yet" and "it is gone"
  indistinguishable.
- Any operation that discards judgment as a side effect of doing something else.

## Assessment
For each feature, ask what the user would lose if the app were killed at the worst
possible moment, and whether the next launch would tell them the truth about it.
