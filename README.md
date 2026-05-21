# SEC API Homebrew Tap

Official Homebrew tap for SEC API command-line tools.

## Install

```bash
brew tap secapi-ai/tap
brew install secapi
```

## Verify

```bash
secapi --help
```

## Use

```bash
export SECAPI_API_KEY="your-api-key"

secapi entities resolve --ticker AAPL --json
secapi filings latest --ticker AAPL --form 10-K --json
secapi statements get --ticker AAPL --statement all --period annual --json
```

The formula installs the published npm package `@secapi/cli` and exposes the `secapi` binary.
