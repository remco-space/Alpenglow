---
id: catch-up-with-library
title: Catch up with the library
kind: feature
parent: null
intent: The candidate set stays true to the user's library without the user ever asking it to.
tier: core
status: open
touches:
  - { component: candidate-pool, needs: find new candidates and re-check what changed }
  - { component: shell, needs: show what is happening and what changed }
---

## Behavior
The system catches up when the app opens and then follows the library as it changes,
while the app is open. New photos that could work as wallpaper join the set. Photos
the user edited are re-examined — only those, never the whole library. Photos deleted,
or edited until they no longer qualify, leave on their own. Facts that can change
about a photo, such as whether the user marked it a favorite, are refreshed rather
than remembered from the first look.

While it works it shows live progress and, at the end, what actually changed. A
change small enough to be instant just appears, with no ceremony around it.

## Acceptance
- Catching up adds only genuinely new photos and never the same photo twice.
- An edited photo causes that photo alone to be re-examined.
- A photo that stops qualifying leaves without a re-scan, including while the app is open.
- There is no control anywhere that asks the library to be scanned again.

## Rejected
A refresh or re-scan button. Offering it would concede that the system cannot tell
when its own data went stale, and there is nothing it would find that following the
library has not already found.
