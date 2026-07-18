## Summary

<!-- What changed and why. One paragraph max. Link issues with "Closes #". -->

Closes #

## Scope

<!-- Check ALL areas this PR touches. Reviewers and CI use this to gauge blast radius. -->

- [ ] `Formula/secapi.rb` — Main `secapi` formula
- [ ] `Formula/` — Other formula additions / updates
- [ ] `README.md` — Tap usage docs
- [ ] `.github/` — CI/CD workflows / brew-test-bot config

## Changes

<!-- Bullet points grouped by area. Be specific — diffs are for code, this is for intent. -->

- Formula version bump (from `X.Y.Z` to `A.B.C`)
- SHA256 / URL updates
- Dependency / caveats updates
-

## Verification

<!-- What you ran locally. Paste actual commands and their outcomes. -->

```bash
brew audit --strict --online secapi-ai/tap/secapi # ✅ / ❌
brew install --build-from-source secapi-ai/tap/secapi # ✅ / ❌
brew test secapi                                  # ✅ / ❌
secapi --version                                  # ✅ / ❌  reports new version
```

<details>
<summary>Additional verification (expand if applicable)</summary>

```bash
# Style
brew style secapi-ai/tap/secapi

# Live tap install (after PR merges this is what users will do)
brew tap secapi-ai/tap
brew install secapi
secapi --help
```

</details>

## Deployment Impact

<!-- Skip this section entirely for non-release changes. -->

- [ ] Formula version bump (matches upstream release tag)
- [ ] SHA256 verified against the published artifact
- [ ] Tests pass on macOS (Intel + Apple Silicon if applicable)
- [ ] Tests pass on Linux (if formula supports it)
- [ ] Companion release shipped in `secapi-ai/secapi-cli`

## Completion Attestation

<!-- You MUST select one. This is a binding statement of delivery status. -->

- [ ] **100% complete, 100% functional.** Formula audits, installs, and tests pass. End users can `brew install secapi` and run the CLI successfully. No outstanding work remains.
- [ ] **Not fully complete or functional.** Deltas listed below.

### Deltas (only if attesting incomplete)

<!-- Short bullets. Items intentionally deferred from this PR's stated scope. -->

-

## Screenshots / Demo

<!-- Terminal output of `brew install` / `brew test`. Delete section if not applicable. -->

---

<details>
<summary>Agent Context</summary>

<!-- This section is for AI coding agents that may continue or review this work.
     Fill in what's relevant; delete what isn't. -->

**Key files to read first:**
- `Formula/secapi.rb`
- `README.md`

**Decisions made:**
<!-- Non-obvious choices and why. Agents should not re-litigate these. -->
-

**Relevant docs:**
- https://docs.brew.sh/Formula-Cookbook
- secapi-ai/secapi-cli (upstream)

**Conventions applied:**
<!-- Bottle DSL usage, livecheck pattern, language for caveats. -->
-

</details>
