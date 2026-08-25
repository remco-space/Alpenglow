---
id: browse-ranked-grid
title: Browse the ranked photos
kind: feature
parent: null
intent: The user sees their accepted photos in the system's current order, best first.
tier: core
status: open
touches:
  - { component: taste, needs: supply the current ranking }
  - { component: candidate-pool, needs: supply the accepted, de-duplicated photos and their library facts }
  - { component: shell, needs: present the photos and switch among the three views }
---

## Behavior
Accepted photos appear as a grid in ranked order, and it stays smooth however many
there are. Repeated shots of one scene appear once, represented by the best of the
group. Each photo shows what the system knows about it — its current standing, and
whether the user has marked it a favorite.

The order and the contents bring themselves up to date whenever the user is looking.
While the user is busy elsewhere, and mid-comparison especially, staying current in
the background is wasted work on a device with better things to do; what matters is
that by the time they look again, what they see is true. Two further views list the
photos the user has judged poor and the photos they have set aside.

## Acceptance
- Photos appear in ranked order and scroll smoothly at library scale.
- Repeated shots of one scene occupy one place in the grid.
- Whatever changes anywhere in the system, the visible view is current by the time it is seen.
- There is no manual refresh control in any of the three views.
- Every tile is a fixed shape, and a click or tap lands only on the photo it appears to land on.

## Rejected
Keeping the order live while the user is looking at something else. Recomputing an
order nobody is reading costs battery to produce a result that will be recomputed
again before anyone sees it.
