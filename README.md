# SEC API Homebrew Tap

Install the [SEC API CLI](https://secapi.ai/developers) with Homebrew to query SEC data from your terminal, scripts, and agent workflows.

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

## Authenticate and make a request

Authenticated commands read your API key from `SECAPI_API_KEY`. Keep the key in your environment rather than placing it in a command argument.

```bash
export SECAPI_API_KEY="YOUR_SECAPI_API_KEY"
secapi filings latest --ticker AAPL --form 10-K
```

`secapi health` checks the API origin without authentication. Use `secapi --help` or `secapi <group> <command> --help` to discover the available commands and options.

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

- [SEC API documentation](https://docs.secapi.ai)
- [SEC API developer portal](https://secapi.ai/developers)
- [Report a tap issue](https://github.com/secapi-ai/homebrew-tap/issues)

## Compatibility and status

This tap is intended for Homebrew users on macOS or Linux. The formula depends on Homebrew's `node` formula and currently installs the published `@secapi/cli` version `1.3.0`. `secapi` is the preferred executable; `omni-sec` is also installed as a compatibility alias.

The formula's built-in Homebrew test verifies `secapi --help` only. Run the authenticated request above with your own API key to confirm API access in your environment.
