---
id: on-device-only
title: Photo content stays on the device
kind: criterion
statement: The content of the user's photos never leaves their own devices for a third party.
scope:
  system: true
strength: required
status: decided
---

## Why
The library is the most private thing most people own, and the system asks for all of
it. That access is only defensible if the pictures themselves never go anywhere — the
examination happens where the photos already are.

## Guidance
- Prefer work that can be done where the photo sits over work that requires sending it somewhere.
- The user's own cloud account is not a third party; carrying judgments through it is
  within this criterion, carrying photos is not.

## Avoid
- Sending a photo, a crop, or a derived image off the device for examination.
- Reporting anything about the user or their library as a side effect of an unrelated action.

## Assessment
For each feature that examines or transmits anything, ask: what exactly leaves the
device, and would the user recognize it as their photo? Ask separately whether
anything is reported about them rather than about the photo.
