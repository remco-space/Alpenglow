---
id: candidate-pool
title: Candidate pool
kind: component
parent: alpenglow
responsibility: Decide which photos are in play and keep that set true to the library as it changes.
tier: core
status: open
depends_on:
  - { to: photos-access, kind: uses, what: permission to read the library }
  - { to: judgment-store, kind: uses, what: durable memory of what has been seen }
open_questions:
  - Does near-duplicate collapsing belong here or with taste?
---

## Why
Everything downstream is a function of "which photos are we talking about", so one
component has to own that set and its currency. The set is not a snapshot: photos
arrive, get edited, get deleted, and get favorited, and every one of those changes
can add or remove a candidate. Making currency somebody's explicit responsibility
is what removes the need for the user to ever ask for a re-scan.

Admission is deliberately generous. A photo too small for today's display is
admitted and allowed to rank low, because old photos are rare and irreplaceable and
the user's own choices are a better judge of whether size matters than a fixed bar
is.

Collapsing near-duplicates lives here because it is a property of the set rather
than of quality: eight frames of one vista should enter the competition as one
contender. Choosing which of them represents the group is a fixed tie-break, not a
learned preference, which is why it does not require taste.

## Contract
Provides: the current set of candidates, each with the library facts that can change
about it, near-duplicates collapsed to one representative.
Consumes: read access from photos-access, durable memory from judgment-store.

## Essential vs accidental
Essential: the set is always current without the user asking; nothing is admitted
twice; a photo that stops qualifying leaves on its own.
Accidental: what counts as "wide enough" or "large enough" today, and how sameness
between two frames is recognized.

## Rejected
A re-scan control. It offers the user a button whose only honest label would be
"find what I already found", and its existence admits the system cannot tell when
its own data went stale — which it can.
