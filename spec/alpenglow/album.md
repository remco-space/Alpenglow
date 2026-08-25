---
id: album
title: Album
kind: component
parent: alpenglow
responsibility: Own what the wallpaper album contains, how it is ordered, and how big it is.
tier: core
status: open
depends_on:
  - { to: taste, kind: consumes, what: the ranking and where quality falls off }
  - { to: candidate-pool, kind: consumes, what: the de-duplicated set eligible for the album }
  - { to: photos-access, kind: uses, what: consent and the means to change the album }
  - { to: judgment-store, kind: uses, what: durable memory of the user's size standard }
---

## Why
The album is the finish line: the one artifact that leaves the system and becomes
something the operating system rotates. It owns three decisions the ranking cannot
make alone — how many photos deserve to be there, in what order they should appear,
and when the library should actually be changed to match.

Order is a variety problem, not a quality problem. Rotating in order through photos
sorted by rank would give the user a week of the same mountain; the album is
arranged so that consecutive wallpapers look as unlike each other as possible.

Size is remembered as a standard rather than a number. The user is expressing
strictness — "about half of what you'd suggest" — and that judgment should survive
new photos and new comparisons instead of being re-derived, or worse, frozen as a
count that means something different next week.

## Contract
Provides: the album's intended contents and order, a preview of exactly what a change
would do, and the change itself on request.
Consumes: ranking from taste, eligible photos from candidate-pool, consent and library
change from photos-access, the size standard from judgment-store.

## Essential vs accidental
Essential: the album changes only when asked; a change that fails leaves the album as
it was rather than empty; the system checks the result rather than assuming it.
Accidental: the album's name, and how variety in the ordering is measured.

## Rejected
Keeping the album continuously in sync. Several of the user's devices share one album,
and unattended changes would let them quietly undo one another's work.

## Decisions
The suggested size is followed automatically only until the user first sets a size of
their own, and never overrides them afterward. A suggestion that keeps reasserting
itself is not a suggestion.
