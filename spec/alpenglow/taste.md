---
id: taste
title: Taste
kind: component
parent: alpenglow
responsibility: Learn from the user's own choices how good each photo is as a wallpaper.
tier: core
status: open
depends_on:
  - { to: candidate-pool, kind: consumes, what: the photos available to rank and compare }
  - { to: judgment-store, kind: uses, what: durable memory of every choice and verdict }
---

## Why
Nobody can state what makes a good wallpaper, but everybody can answer "which of
these two". That asymmetry is the product's central bet: the system asks the one
question the user can actually answer, and derives everything else from the answers.

Because the ranking is learned rather than declared, the system holds no opinion of
its own about resolution, tilt, or subject. A tilted photo sinks only if this user's
choices say tilted photos lose. This is what keeps the result personal instead of
being someone else's idea of a nice picture wearing the user's photos.

Absolute quality is a second, separate thing the ranking cannot supply. Comparisons
produce an order but never a cutoff — the best photo in a bad library still ranks
first. Verdicts that call a pair outright good or outright bad are what tell the
system where "good enough" sits, which is what makes a suggested album size possible.

## Contract
Provides: a live ranking of the candidates, a sense of where quality falls off, and
the next pair most worth asking about.
Consumes: candidates from candidate-pool, durable memory from judgment-store.

## Essential vs accidental
Essential: nothing is hard-coded; every choice counts permanently; the ranking judges
the same crop the wallpaper will actually show.
Accidental: how uncertainty picks the next pair, and how the ranking is computed.

## Rejected
Seeding the ranking from nothing. A first duel between two photos the system knows
nothing about teaches the user that the system knows nothing about them; starting
from the favorites they already marked makes the very first suggestion feel personal.

## Decisions
A verdict of outright bad also pushes the ranking down, while outright good does not
push it up. Good photos already rise by winning comparisons, so counting them twice
would say the same thing louder, whereas badness has no other route into the ranking.
