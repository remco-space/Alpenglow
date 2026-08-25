---
id: sync-album
title: Update the album
kind: feature
parent: null
intent: On the user's request, the album in their library is made to match the preview.
tier: core
status: open
touches:
  - { component: album, needs: apply the intended contents and verify the result }
  - { component: photos-access, needs: consent and the means to change the album }
  - { component: shell, needs: request it by name and report what happened }
---

## Behavior
Nothing about the album changes until the user asks. When they do, they are told what
will be created, added or removed before it happens, and afterwards how many photos
the album holds and how many moved. The system then checks that the album really
ended up in the order it asked for, and says so when it did not, rather than assuming
success.

If it fails partway, the album is put back as it was — an interrupted change must not
leave the user with an empty album or a broken wallpaper rotation. Quitting while one
is running waits for it to finish or undo itself. An album the user has renamed is
still the album; a rename never orphans it or produces a second one. A device that
cannot yet see the album says so and waits.

## Acceptance
- The album changes only in response to an explicit request.
- The user is told what will change before it changes.
- A failure part-way restores the previous contents.
- The resulting order is verified rather than assumed, and a mismatch is reported.
- A renamed album is still found, and never duplicated.

## Rejected
Keeping the album continuously in step with the ranking. The user's devices share one
album, so unattended changes on one would silently undo another's.
