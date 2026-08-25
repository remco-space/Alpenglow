---
id: size-album
title: Choose how many photos
kind: feature
parent: null
intent: The user sets how large the album should be, expressed as their own standard of quality.
tier: core
status: open
touches:
  - { component: album, needs: hold the chosen size and remember it as a standard }
  - { component: taste, needs: supply where quality falls off in this user's own ranking }
  - { component: shell, needs: offer the choice as one control with the exact count visible }
---

## Behavior
One control runs from a handful of photos to every candidate the library holds. Its
scale is proportional, so a nudge changes the count by a fraction of it rather than a
fixed amount, and a few labeled marks make that unusual scale readable at a glance.
The exact count is shown alongside and can be typed directly. Every count is
reachable by dragging — the marks are there to read the scale by, not to confine the
thumb — with one exception: the system's own suggestion gently catches the passing
thumb, because it is the one point that is easy to mean and hard to hit.

The suggestion is where quality falls off in the user's own ranking. It is followed
automatically until the user first sets a size themselves, and after that it never
overrides them. What is remembered is their strictness relative to the suggestion,
not the number, so when the suggestion moves with new photos and new judgments, their
standard moves with it instead of quietly meaning something else.

## Acceptance
- Every count in the range is reachable by dragging, and also by typing.
- The suggestion is marked on the scale, and adopting it requires no separate control.
- Once the user has set a size, the suggestion never overrides it.
- The remembered standard survives changes in the suggestion, and counts on every device.
- A pool momentarily too small to honour the standard limits what is shown, never what is remembered.

## Rejected
Remembering the choice as a count. "Half of what you think" would be re-derived into
a different meaning after every scan, so the user would have to keep restating a
preference they already expressed.
