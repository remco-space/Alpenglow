---
id: duel
title: Compare two photos
kind: feature
parent: null
intent: The user picks which of two photos makes the better wallpaper, and the system learns from it.
tier: core
status: open
touches:
  - { component: taste, needs: choose the pair worth asking about and learn from the answer }
  - { component: shell, needs: present both photos at once and record the answer }
---

## Behavior
Two photos, one question, four possible answers: this one, that one, both good, both
bad, or move on. Both are shown in the same wide shape the wallpaper will actually
fill — the same shape on every device — so the judgment means the same thing wherever
it was made, which matters most for panoramas that look nothing like their wallpaper
crop. Both are fully visible at once however small the screen.

The system asks about the pairs it is least sure of, does not re-ask what is settled,
avoids pairs too alike to be informative, and randomizes which side each photo
appears on. It deliberately asks about a wider set than the album will hold, so it
learns not only the order but where the cutoff belongs, narrowing as that firms up.
Every newly drawn pair reflects everything judged so far.

## Acceptance
- Both photos are fully visible at once, in the wallpaper crop, on every screen size.
- The same pair is not asked about twice once it is settled.
- Which side a photo appears on is random.
- A pair already on screen stays valid to judge even if a judgment elsewhere has since changed things.
- The count of choices made is visible, and an empty state appears when there are not yet two to compare.

## Rejected
Ranking from the whole photo rather than the wallpaper crop. The user would be
judging something other than what they will see every day, and panoramas would be
ranked on parts of themselves the wallpaper never shows.
