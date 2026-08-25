---
id: grant-access
title: Grant access to the library
kind: feature
parent: null
intent: The user gives Alpenglow permission to read their photo library, at a moment of their choosing.
tier: core
status: open
touches:
  - { component: photos-access, needs: ask for access and report the current state }
  - { component: shell, needs: show what access is missing and offer the right next step }
---

## Behavior
Nothing is asked at launch. When the user first does something that needs the
library, they are asked for it, and the reason is obvious because they just asked
for the thing. From then on the first stage of the journey reflects whatever the
current state is — never asked, granted, partial, refused, or forbidden — and
offers the one action that moves that particular state forward.

If the user changes their mind outside the app, the app notices on their return
without being restarted. If they grant only part of the library, the app says
plainly that it works on whole libraries and offers the upgrade, rather than
proceeding on a fraction.

## Acceptance
- Access is never requested without a preceding action by the user.
- Every access state offers a next step appropriate to it.
- A grant or a withdrawal made outside the app takes effect on return, with no relaunch.
- Partial access produces an explanation and an upgrade offer, never a partial result.

## Rejected
Proceeding on a partial grant and noting the limitation somewhere. The result would
be a confident ranking with the user's best photo silently missing from it.
