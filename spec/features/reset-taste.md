---
id: reset-taste
title: Start taste over
kind: feature
parent: null
intent: The user can deliberately discard what the system has learned and begin again.
tier: core
status: open
touches:
  - { component: judgment-store, needs: discard learned judgments while keeping what is not a judgment }
  - { component: shell, needs: state plainly what goes and what stays before it happens }
---

## Behavior
Before anything is discarded the user is told exactly what will go and what will
remain. Only then does it happen. It is never a side effect of another action and
never reachable by accident, because it destroys the one thing in the system that
cannot be recomputed.

## Acceptance
- What goes and what stays is stated before the action, not after.
- It cannot happen as a consequence of any other action.

## Rejected
An undo afterwards. Promising reversal for an operation whose whole purpose is to
discard would make the warning feel optional, and the guarantee would be hard to keep
honestly.
