# SEC API CLI Homebrew Tap

Install the [SEC API CLI](https://docs.secapi.ai) with Homebrew. It queries SEC filings, filing text, and structured financial data, returning JSON by default for shells, scripts, and agent workflows.

## Install

```bash
brew tap secapi-ai/tap
brew install secapi
secapi health
```

`secapi health` checks the configured API origin and does not require authentication. You can also install the formula directly:

```bash
brew install secapi-ai/tap/secapi
```

## Retrieve a filing

Set your API key in the environment, then resolve a company and request its latest annual filing:

```bash
export SECAPI_API_KEY="secapi_live_..."
secapi entities resolve --ticker AAPL
secapi filings latest --ticker AAPL --form 10-K
secapi statements get --ticker AAPL --statement all --period annual --limit 1
```

These commands write JSON to standard output: issuer details, the latest matching 10-K, and normalized annual statements. Add `--request-summary` when a script needs request metadata on standard error while retaining response JSON on standard output.

## Handle API keys safely

The CLI reads `SECAPI_API_KEY` from the environment; it does not accept API keys or bearer tokens as command-line arguments. Use your shell's environment management for local work and masked environment secrets in CI or agent runners. If a runner must provide a key noninteractively, pipe it over standard input with the documented `--api-key-stdin` flag; never put it in a command argument, prompt, or log.

## Discover and diagnose

```bash
secapi --help
secapi filings latest --help
secapi examples --json=false
secapi doctor
secapi agent-context --output secapi-cli-context.json
```

`secapi doctor` checks the selected origin, credential source, API health, account context, and hosted MCP configuration without printing credential values. `secapi agent-context` is local-only and writes a machine-readable command inventory. `omni-sec` remains available as a compatibility alias; use `secapi` in new scripts.

## Upgrade or uninstall

```bash
brew update
brew upgrade secapi
```

```bash
brew uninstall secapi
brew untap secapi-ai/tap
```

Only untap `secapi-ai/tap` after removing every formula you use from this tap.

## Documentation and support

- [Get started with SEC API](https://docs.secapi.ai/getting-started)
- [Open the developer portal](https://secapi.ai/developers)
- [Report a tap issue](https://github.com/secapi-ai/homebrew-tap/issues)
