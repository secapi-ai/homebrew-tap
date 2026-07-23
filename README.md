# SEC API Homebrew Tap

[SEC API](https://secapi.ai) provides programmatic access to SEC filings, issuer records, and structured statements. Install the [CLI](https://docs.secapi.ai/cli) with Homebrew for terminal research, reproducible scripts, and agent tools.

## Install

```bash
brew tap secapi-ai/tap
brew install secapi
```

Or install it directly without a separate tap command:

```bash
brew install secapi-ai/tap/secapi
```

Confirm the installed command and see the available commands:

```bash
secapi --help
```

## Make your first request

Create an API key in the [SEC API dashboard](https://secapi.ai/app), then set it in your shell. The CLI reads `SECAPI_API_KEY` from the environment, keeping credentials out of command arguments and shell history.

For CI and agent workflows, inject the value through the platform's masked-secret environment handling. When a wrapper must supply the value itself, read it noninteractively from standard input rather than placing it in a command argument; do not echo the key or include it in logs or prompts.

```bash
export SECAPI_API_KEY="your_api_key"
secapi entities resolve --ticker AAPL
secapi filings latest --ticker AAPL --form 10-K
secapi statements get --ticker AAPL --statement all --period annual --limit 1
```

The commands return structured issuer data, the latest matching filing, and annual statements. Keep filing URLs, accession numbers, and request IDs with any research you carry forward; a later filing can change a latest-filing result.

## Check your setup

```bash
secapi health
secapi filings latest --help
secapi agent-context
```

`secapi health` checks the API origin without authentication. Command help runs locally, and `agent-context` prints a machine-readable command inventory for an integration or agent.

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
- [CLI reference](https://docs.secapi.ai/cli)
- [Pricing](https://secapi.ai/pricing)
- [Service status](https://status.secapi.ai)
- [Support](https://secapi.ai/support)
- [Report a tap issue](https://github.com/secapi-ai/homebrew-tap/issues)

## Compatibility

This formula supports Homebrew on macOS and Linux. It installs Node.js as a dependency. `secapi` is the primary executable; `omni-sec` remains available as a compatibility alias.
