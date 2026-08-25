---
id: shell
title: Shell
kind: component
parent: alpenglow
responsibility: Present the three stages of the journey and offer every action the system can perform as something the user can name and reach.
tier: core
status: open
depends_on:
  - { to: candidate-pool, kind: consumes, what: the current candidate set and its progress }
  - { to: screening, kind: consumes, what: what is being examined and what remains }
  - { to: taste, kind: consumes, what: the live ranking and the next pair }
  - { to: album, kind: consumes, what: the preview, the size, and the result of a change }
  - { to: photos-access, kind: consumes, what: the current access state }
  - { to: judgment-store, kind: uses, what: what the user has decided }
---

## Why
The pipeline has three stages, so the app has three places, and the order the user
meets them in is the order the work happens in. That correspondence is the whole
navigation design — a user who understands the journey can predict where anything
lives.

The shell also owns a promise the other components cannot keep individually: that
the system always feels like it belongs on the platform and always stays out of the
user's way. Work happens behind live progress rather than in front of a frozen
window, controls stay where the user's hand expects them, and nothing essential is
reachable only by a gesture or a hover.

Reachability by name is the load-bearing part. Every action must exist as a named
command, not only as a right-click or an unlabeled icon, because a name is what
makes an action discoverable, keyboard-operable, and speakable to assistive
technology at once.

## Contract
Provides: the three stages, the state of everything in progress, and every action as
a named, reachable command.
Consumes: state and actions from every other component.

## Essential vs accidental
Essential: no action freezes the interface; nothing the system does of its own accord
moves a control the user may be reaching for; every action has a name.
Accidental: that the stages are tabs, and which platform conventions express them.

## Rejected
Any control the brief does not call for, and any second control that does a job
another already does. An unasked-for control is one more thing to read and reach
past, and two ways to do one thing make each other harder to understand.
