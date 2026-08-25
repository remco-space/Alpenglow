---
id: distribution
title: Distribution
kind: component
parent: alpenglow
responsibility: Get each release to the user with a truthful identity and keep the project's public face publishable.
tier: core
status: open
open_questions:
  - Is the repository's own practice part of this system, or context around it?
  - Should reaching users and repository hygiene be two components rather than one?
---

## Why
Outside a store there is nobody else to do this. No review process checks that the
app launches, no store page persuades anyone to try it, no update mechanism carries
a fix to the person it fixes something for, and no listing tells a stranger whether
the project is real. All of that becomes the project's own responsibility, which is
why it is a component rather than an afterthought.

Identity is the thread running through it. A version is the one handle the user and
the author share when something has to be identified, so it must be truthful, must
move whenever the user-visible product moves, and must be the same number in the
release, in the app, and in the changelog.

The repository is grouped here, uneasily, because for a project distributed this way
the repository *is* the storefront and the development process is part of the
interface. Whether that makes it part of this system or context around it is the
open question above, and the answer changes this component's boundary.

## Contract
Provides: a release the user can download and launch, a truthful version, a way to
learn a newer one exists, and a public repository that contains only what the
project may publish.
Consumes: nothing within the system.

## Essential vs accidental
Essential: the version shown is the version running; that a release launches is
verified rather than inferred; nothing personal to the author's machine and nothing
authored by others is published in the repository.
Accidental: which host serves the releases, and which warning the platform shows for
an unidentified developer.

## Rejected
Checking for updates without asking. A system that reaches out on the user's behalf
without permission has broken the same promise as one that uploads their photos,
even when it sends nothing.
