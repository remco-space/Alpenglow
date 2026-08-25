---
id: screen-candidates
title: Screen candidates by content
kind: feature
parent: null
intent: Only photos whose visible content suits a wallpaper go forward, and the user learns why the rest did not.
tier: core
status: open
touches:
  - { component: screening, needs: judge each candidate's content and defer what it cannot reach }
  - { component: shell, needs: report progress, the breakdown, and offer stopping and resuming }
---

## Behavior
Each candidate is examined where it sits, on the user's own device. Landscapes and
scenery go forward; pictures with people in them, screenshots and utility images do
not. Afterwards the user can see the tally of why things were set aside, which is
what makes an unexpectedly small result explicable rather than alarming.

Photos that live only in the cloud are deferred rather than skipped: everything
already on the device is finished first, then the system comes back for the rest,
retrying by itself when network and power allow. Progress distinguishes "waiting"
from "done" and never claims completion while work remains. On a handheld device a
long run continues with the screen locked while charging, and pauses itself — saying
so — rather than running the device hot or flat.

## Acceptance
- Screening happens on the user's device and sends no photo anywhere.
- Rejections are reported by reason, not merely as a count.
- Completion is never claimed while deferred work remains.
- Deferred work is retried by the system, never by a retry control the user must find.
- The user can stop at any moment and resume where it stopped.

## Rejected
A retry button for deferred photos. The conditions it waits on are ones the system
can observe for itself, so the button only asks the user to guess when they have
been met.
