# SEC API CLI Homebrew Tap

Install the [SEC API CLI](https://docs.secapi.ai) with Homebrew to resolve issuers, retrieve SEC filings, and request structured statements from a terminal, script, or agent workflow.

## Install

```bash
brew tap secapi-ai/tap
brew install secapi
```

Or install it directly without a separate tap command:

```bash
brew install secapi-ai/tap/secapi
```

Confirm the installed command:

```bash
secapi --help
```

## Start with a filing workflow

Set `SECAPI_API_KEY` in the calling environment. The CLI reads it from there, so the key stays out of command history.

```bash
export SECAPI_API_KEY="YOUR_SECAPI_API_KEY"
secapi entities resolve --ticker AAPL
secapi filings latest --ticker AAPL --form 10-K
secapi statements get --ticker AAPL --statement all --period annual --limit 1
```

The commands return structured output for the issuer, its latest 10-K, and annual statements. Keep returned source fields, accession numbers, and request IDs with downstream research when available.

## Check setup and discover commands

```bash
secapi health
secapi filings latest --help
secapi agent-context
```

`secapi health` checks the API origin without authentication. Command help runs locally, and `agent-context` prints a machine-readable command inventory for integrations.

## Upgrade and uninstall

```bash
brew update
brew upgrade secapi
```

```bash
brew uninstall secapi
brew untap secapi-ai/tap
```

Only run `brew untap secapi-ai/tap` when you no longer use any formulae from this tap.

## Documentation and support

- [Getting started with SEC API](https://docs.secapi.ai/getting-started)
- [SEC API developer portal](https://secapi.ai/developers)
- [Report a tap issue](https://github.com/secapi-ai/homebrew-tap/issues)

## Compatibility

This formula supports Homebrew on macOS and Linux. `secapi` is the preferred executable; `omni-sec` is available as a compatibility alias.
