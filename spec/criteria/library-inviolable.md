---
id: library-inviolable
title: The library is the user's, not the system's
kind: criterion
statement: The system changes nothing in the library except its own album, and asks before doing even that.
scope:
  system: true
strength: required
status: decided
---

## Why
The user is handing over their entire photo library on the strength of a promise.
Everything the product is worth depends on that promise holding without exception —
one destructive surprise and the trust never returns.

## Guidance
- Treat the user's own photos as strictly read-only, whatever the grant allows.
- Name the specific change before making it, so consent is informed rather than blanket.
- Let the user waive the asking permanently, per kind of change; a warning that cannot
  be dismissed for good is one nobody reads.

## Avoid
- Any change to the library that the user did not ask for, however convenient.
- Unattended changes to the album, which several devices share and could undo for each other.

## Assessment
For every feature that writes anything, ask: what precisely is changed, was it named
before it happened, and could a failure part-way leave the user worse off than before?
