---
id: nothing-superfluous
title: Nothing in the interface is unasked for
kind: criterion
statement: Every control and view traces back to a stated requirement, and no two controls in one place do the same job.
scope:
  system: true
strength: required
status: decided
---

## Why
An unasked-for control is not a free extra: it is one more thing to read, reach past,
and keep working. Two ways to do one thing make each other harder to understand, since
the user must work out how they differ before using either.

## Guidance
- Where several controls could serve, keep the one that serves the whole range of the
  task and leave the others out.
- Prefer making an existing control carry a new case over adding a second control beside it.

## Avoid
- Text drawn over other text at any window size, text size, or data the system can reach.
- More than one prominent action competing for attention in one place.

## Assessment
For each control, ask which requirement it traces to and what else in the same place
could already have done its job.
