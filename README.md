# SEC API Homebrew Tap

Official Homebrew tap for the SEC API CLI.

## Install

```bash
brew install secapi-ai/tap/secapi
```

## Verify

```bash
secapi --help
```

The formula installs the published npm package `@secapi/cli` and exposes the
preferred `secapi` executable. `omni-sec` is available as a compatibility
alias.

## Authenticate and use

```bash
export SECAPI_API_KEY="secapi_live_..."

secapi doctor
secapi entities resolve --ticker AAPL
secapi filings latest --ticker AAPL --form 10-K
secapi statements get --ticker AAPL --statement all --period annual --limit 1
```

Commands that call the API read `SECAPI_API_KEY` from the environment. Do not
pass credentials as command-line arguments. Use `secapi --help` or
`secapi <group> <command> --help` to discover available commands and options.
