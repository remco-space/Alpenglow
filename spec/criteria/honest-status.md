---
id: honest-status
title: The system never claims more than it did
kind: criterion
statement: No failure is silent and no success is claimed that was not achieved.
scope:
  system: true
strength: required
status: decided
---

## Why
Almost everything the system does is slow, partial, or dependent on conditions
outside its control. A system in that position earns trust only by being scrupulous
about the difference between finished, waiting, and failed — the user cannot check
the library by hand.

## Guidance
- Distinguish waiting from done wherever work can be deferred.
- Verify results that can be verified rather than assuming the request was honoured.
- Show a loading state rather than a provisional number that will change.

## Avoid
- Counting deferred work as complete.
- Reporting a change as successful without checking it.
- Placeholder or default counts standing in for a value not yet known.

## Assessment
For each feature, ask what it reports at the moment it is least finished, and whether
a user reading only that report would form a true belief.
