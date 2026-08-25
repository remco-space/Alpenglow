---
id: check-for-update
title: Learn a new release exists
kind: feature
parent: null
intent: The user finds out when a newer release is available and how to get it, if they agreed to be told.
tier: core
status: open
touches:
  - { component: distribution, needs: determine whether a newer release exists }
  - { component: shell, needs: ask once for agreement and report what was found }
---

## Behavior
The user is asked once whether the app may look. If they agree, it tells them when a
newer release exists and how to get it. Nothing about them or their library is
reported in the course of asking — the question is only whether something newer was
published.

## Acceptance
- No check happens before the user has agreed to it.
- The agreement is asked for once, not repeatedly.
- Nothing about the user or their library is transmitted.

## Rejected
Checking silently by default. Distributed outside a store there is no other route
from a published fix to the person it helps, but that argues for asking clearly, not
for skipping the question.
