---
id: stays-responsive
title: The system stays usable while it works
kind: criterion
statement: No action ever freezes the interface, and the rest of the system stays usable while slow work runs.
scope:
  system: true
strength: required
status: decided
---

## Why
Nearly every operation here is long: examining thousands of photos, waiting on a
cloud download, rebuilding an album. A frozen window with a spinning cursor looks
broken and leaves the user nothing to do, so even honest waiting must never take the
whole system hostage.

## Guidance
- Run slow work out of the way, behind live progress.
- Let the user move between stages while work continues, including into a stage that
  is still loading.
- Keep scrolling smooth at the scale a real library reaches, not the scale a test set does.

## Avoid
- One stage's loading holding up another's, especially the one at the end of the journey.

## Assessment
For each feature, ask what the user can still do while it runs, and whether the answer
holds at library scale rather than at demo scale.
