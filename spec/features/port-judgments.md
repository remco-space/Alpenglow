---
id: port-judgments
title: Carry judgments elsewhere
kind: feature
parent: null
intent: The user can copy everything they have decided off the device and restore it, here or on another device.
tier: core
status: open
touches:
  - { component: judgment-store, needs: export every decision and merge a restored set back }
  - { component: shell, needs: offer both by name and report what happened }
---

## Behavior
Everything the user has decided can be written out and read back. That means every
decision that has meaning across devices — every comparison, every verdict, every
photo set aside, and the album-size standard, which is a judgment like any other and
not a device setting.

Restoring merges rather than replaces, because the likely case is a device that has
its own accumulated judgments and is receiving another's, not an empty one being
filled.

## Acceptance
- Everything with cross-device meaning is included, the size standard among it.
- Restoring merges with what is already there rather than overwriting it.
- A restore onto another device produces the same judgments about the same photos.

## Rejected
Exporting the ranking rather than the judgments. The ranking is derived and will be
recomputed anyway; the judgments are the irreplaceable part.
