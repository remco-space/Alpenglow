---
id: install-release
title: Download and launch a release
kind: feature
parent: null
intent: A stranger can download Alpenglow for free and get it running on the first try.
tier: core
status: open
touches:
  - { component: distribution, needs: publish a release that launches, with the instruction that makes it launch }
---

## Behavior
The app is a free download alongside its own source, with nothing gated behind an
account, a paid tier, or a build the user has to perform. Because it is not published
through a store, the system shows one unavoidable warning about an unidentified
developer, and the release always ships the single instruction that clears it.

That a release actually launches is checked before it is published, not inferred from
the fact that it built. Each release carries a changelog entry the user can read
before deciding to update, naming the same version the running app reports.

## Acceptance
- The download requires no account, no payment, and no build step.
- The unavoidable warning is anticipated and the instruction that clears it ships with the release.
- Launching is verified before publication rather than inferred from a successful build.
- The version in the release, in the changelog, and in the running app are the same.

## Rejected
Publishing without checking that the downloaded artifact runs. A build succeeding says
nothing about whether the thing a stranger downloads will open on their machine.
