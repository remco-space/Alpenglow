---
id: preview-album
title: Preview the album
kind: feature
parent: null
intent: Before anything changes, the user sees exactly which photos would go into the album and in what order.
tier: core
status: open
touches:
  - { component: album, needs: compute the intended contents and order }
  - { component: shell, needs: show them in the same form as the ranked grid }
---

## Behavior
The preview is the album as it would be: the same photos, in the same order, shown
the same way the ranked grid shows photos. Order is arranged for variety rather than
by rank, so that rotating through it in order does not produce a run of the same
mountain in the same light.

While the candidate pool is still filling, the preview says it is still loading
rather than showing a count that is about to change. A number that turns out to have
been a placeholder is worse than an honest wait.

## Acceptance
- The preview shows exactly what a change would produce, in the order it would produce.
- Consecutive photos in the order are as visually unlike each other as the set allows.
- While the pool is still loading the tab says so, and shows no provisional count.

## Rejected
Previewing in ranked order. The album's order is the rotation order the user will
actually experience, so previewing a different one would preview a different product.
