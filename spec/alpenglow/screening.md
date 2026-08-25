---
id: screening
title: Screening
kind: component
parent: alpenglow
responsibility: Decide whether a candidate's visible content is the kind of picture anyone would want as a wallpaper.
tier: core
status: open
depends_on:
  - { to: candidate-pool, kind: consumes, what: the candidates to examine }
  - { to: photos-access, kind: uses, what: retrieval of photos held only in the cloud }
  - { to: judgment-store, kind: uses, what: durable memory of each verdict }
---

## Why
Shape and size say a photo could be a wallpaper; only content says it should be.
A receipt, a screenshot, a birthday party and a mountain range can all be wide and
sharp. This judgment is categorical rather than a matter of taste — nobody wants
their own passport photo behind their windows — which is why it is a gate before
the ranking rather than a signal within it.

It is separated from the candidate pool because it is expensive, interruptible, and
sometimes impossible right now: a photo living only in the cloud cannot be examined
until it comes down, and coming down depends on network and power the user controls.
The pool must stay correct and current while this work is still pending on part of it.

## Contract
Provides: for each candidate, whether it passed and if not, which kind of picture it
turned out to be.
Consumes: candidates from candidate-pool, cloud retrieval via photos-access, durable
memory from judgment-store.

## Essential vs accidental
Essential: deferred work is honestly reported as unfinished rather than counted as
done; the system retries deferred work itself rather than asking the user to press
retry; the user can stop it at any moment and resume.
Accidental: which categories of rejection are distinguished, and what makes
examination expensive.

## Rejected
Skipping photos that are not local. Silently dropping the part of the library that
happens to live in the cloud would quietly exclude most of a large library and
report a confident, wrong answer.
