---
id: judge-photo
title: Judge a single photo
kind: feature
parent: null
intent: The user can call one photo poor wallpaper material, or set it aside entirely, from anywhere it appears.
tier: core
status: open
touches:
  - { component: taste, needs: record a quality verdict and let it affect standing }
  - { component: candidate-pool, needs: apply the verdict to that photo alone }
  - { component: shell, needs: offer both verdicts by name wherever a photo appears }
---

## Behavior
Two different dissatisfactions need two different answers. Calling a photo poor is a
judgment about what is visible in it — it teaches the system what bad looks like, so
the photo stays in play, keeps competing, and sinks. Setting a photo aside is for a
flaw the system could never see, such as who is in it; it removes the photo entirely
and teaches nothing, precisely so that the system does not conclude something false
about photos that merely resemble it.

Both are toggles: applying one again takes it back. While a photo is set aside its
quality verdict cannot be changed, and the control says why rather than vanishing.
Both apply to exactly the photo the user acted on, never to the near-duplicates it
represents. Used during a comparison, either one moves on to a fresh pair.

## Acceptance
- Both verdicts are available wherever a photo appears, and both are reachable by name.
- Applying a verdict a second time reverses it, and standing returns as if it had never been given.
- Judging a photo poor never removes it from the grid, from comparisons, or from album sizing.
- Setting a photo aside removes it from all of those.
- Neither verdict affects the other photos collapsed with it.

## Rejected
One combined "remove" action. It would force the user to teach the system a falsehood
about photos like this one whenever their real reason was something the system cannot
see.
