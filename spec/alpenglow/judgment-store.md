---
id: judgment-store
title: Judgment store
kind: component
parent: alpenglow
responsibility: Keep everything the user has decided, permanently and with the same meaning on every one of their devices.
tier: core
status: open
open_questions:
  - Should this merge with taste, or stay the separate durable home for all persisted work?
  - How does a device tell it is looking at the same photo as another device?
---

## Why
The user's investment is not the photos — those were always theirs — it is the
hundreds of small judgments they made one pair at a time. That is the only thing in
the system that cannot be recomputed, so it needs an owner whose whole job is not
losing it: across quits, updates, reinstalls, and the gap between two devices.

It is separate from taste because it holds more than taste. Screening verdicts,
what the pool has seen, exclusions and the user's size standard all need the same
durability guarantee, and taste is a consumer of that guarantee rather than the
place it should live.

Cross-device sameness is the subtle part. A judgment is about a photo, not about a
row on this machine, so a device that has never seen a photo must still be able to
hold an opinion about it and apply it the moment it arrives.

## Contract
Provides: durable memory for every decision, a way to carry it off the device and
back, and a deliberate way to discard it.
Consumes: nothing within the system.

## Essential vs accidental
Essential: no judgment is ever lost, including when two devices are used apart; a
version that cannot read older memory says so and leaves it intact rather than
starting empty.
Accidental: what carries judgments between devices, and whether that transport
exists yet at all.

## Rejected
Treating a lost or unreadable store as an empty one. An empty grid would then mean
both "nothing found yet" and "your work is gone", and the user could not tell which.
