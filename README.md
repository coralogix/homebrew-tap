# Coralogix Homebrew Tap

Official [Homebrew](https://brew.sh) tap for Coralogix CLI tools.

## Installation

```sh
brew install coralogix/tap/cx
```

> **Homebrew 6+:** third-party taps must be trusted before their formulae can be loaded
> ([Tap Trust](https://docs.brew.sh/Tap-Trust)). Installing by the fully qualified name
> taps `coralogix/tap` and trusts only the `cx` formula.
>
> If you already ran `brew tap coralogix/tap` and `brew install cx` fails with
> `Refusing to load formula coralogix/tap/cx from untrusted tap`, run:
>
> ```sh
> brew trust --formula coralogix/tap/cx
> ```

## Updating

```sh
brew update
brew upgrade cx
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| `cx` | Coralogix CLI — query observability data from the command line |
