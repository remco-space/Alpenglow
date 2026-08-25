---
id: publishable-repository
title: The public repository publishes only what it may
kind: criterion
statement: The project publishes only work that is its own, and nothing personal to the machine it grew on.
scope:
  components: [distribution]
  features: [install-release]
strength: required
status: open
open_questions:
  - Is this pressure on this system, or on the project that produces it?
---

## Why
A public repository is written once and read forever: a personal detail committed
today is exposed the moment anyone looks, however long ago it was written. And the
right to publish someone's work belongs to its author, not to whoever finds it useful.

## Guidance
- Carry the means to obtain others' material from where its authors published it,
  rather than a copy of the material.
- Write every tracked file for a contributor on their own machine, so a fresh clone is
  developed the same way as the original.
- Enforce the personal-data check automatically rather than by anyone remembering it,
  and never claim an enforcement that is not actually in place.

## Avoid
- Redistributing others' work inside the repository, whatever licence it carries.
- Tracked files that depend on facts true only of one particular computer or installation.

## Assessment
Ask of anything about to be published: whose work is this, and would it still make
sense on a machine that is not the author's?
