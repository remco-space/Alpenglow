---
id: one-taste-many-devices
title: One taste, however many devices
kind: criterion
statement: A judgment made on one device counts on all of them, against the same photo, whether or not any network exists.
scope:
  components: [judgment-store, taste, album]
  features: [port-judgments, size-album]
strength: required
status: open
open_questions:
  - How is a photo identified as the same photo on a device that has never held it?
---

## Why
The user trains one taste, not one per device. If judgments made on a handheld device
did not count on the machine where wallpaper actually happens, the effort spent there
would be wasted, and the user would have to guess which device to invest in.

## Guidance
- Treat a judgment as being about a photo, not about this device's record of one.
- Let a device hold an opinion about a photo it has not received yet, and apply it on arrival.
- Treat the user's own standard for album size as a judgment like any other, not a
  device setting.

## Avoid
- Requiring a network or an account for anything to work; devices may catch up later.
- Any design in which two devices used apart can cost the user a judgment.

## Assessment
For each judgment the system records, ask what happens to it when the same library is
opened on another device, and what happens when the two are never connected at all.
