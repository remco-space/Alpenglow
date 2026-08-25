---
id: photos-access
title: Photos access
kind: component
parent: alpenglow
responsibility: Hold the user's authorization to read the library and gate every change the system makes to it.
tier: core
status: open
open_questions:
  - Does consent-to-change belong here, or is it design pressure on whoever writes?
---

## Why
Two different things need one owner: whether the system may look at the library at
all, and whether it may change it. Both are the user's grant to give and withdraw,
both can change while the app is running, and both must be answerable before any
other component acts. Splitting them would mean two components each holding half a
permission.

Partial access is treated as no access. A library the system can only partly see
would produce a ranking that silently omits the user's best photo, and a system
that appears to work on a whole library while seeing a fraction of it is worse
than one that plainly says it cannot start.

## Contract
Provides: the current access state, the means to ask for it, and a yes-or-no answer
before any library change.
Consumes: nothing within the system.

## Essential vs accidental
Essential: the system never reads without a grant, never changes without consent,
and never edits or deletes the user's actual photos under any grant.
Accidental: which states the platform distinguishes, and where the user goes to
change them.

## Rejected
Asking for access at launch. Permission asked before the user has done anything is
permission asked before they know what it is for, and it is the request most often
refused.

## Decisions
Consent to change is per kind of change and can be waived permanently by the user
from the moment of asking. A warning that cannot be dismissed for good is one
nobody reads, and a system that cannot be trusted with a waiver has a deeper
problem than the warning solves.
