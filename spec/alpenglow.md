---
id: alpenglow
title: Alpenglow
kind: component
parent: null
responsibility: Turn the user's own photo library into a rotating set of desktop wallpapers that match their personal taste.
tier: core
status: open
open_questions:
  - Is the public repository part of this system, or context around it?
---

## Why
The user already owns the best wallpapers they will ever have — they are sitting
in their own library, mixed in with receipts, screenshots and pictures of people.
The system's whole reason to exist is that finding them by hand is tedious and
choosing between them is a matter of taste nobody can articulate up front but
everybody can exercise one pair at a time.

The three-stage journey is the shape of the product: narrow the library to
plausible candidates, learn what the user actually likes, then hand the result to
the operating system as something it already knows how to rotate. Each stage is
useless alone and the order is not negotiable.

## Contract
Provides: a maintained album of the user's best wallpaper-worthy photos, ordered
for variety, sized to their own standard of quality.
Consumes: the user's photo library, and the user's judgments about pairs of photos.

## Essential vs accidental
Essential: the taste is learned from the user rather than declared by the system;
the library is never damaged; work already invested is never lost.
Accidental: that the result is delivered as an album rather than set directly, and
that the Mac is where wallpaper happens — both are consequences of what the
platform permits today, not of what the product is.

## Rejected
Curating from a stock library or an online source. The premise is that these are
the user's own pictures, with their own memories attached — a beautiful stranger's
photograph is a different product entirely.
