# Homebrew tap for Monet

[Monet](https://github.com/felipebarcelospro/monet) — one brain for you and
your agents. A quiet, local-first Markdown vault: a rich desktop app for the
person thinking, and a CLI and MCP server for the agents helping. Your notes
stay as plain `.md` files in a folder you own.

## Install

The command line interface:

```sh
brew install felipebarcelospro/tap/monet
```

The desktop app:

```sh
brew install --cask felipebarcelospro/tap/monet
```

## Notes

- The CLI installs a self-contained binary for your platform; the checksum is
  verified on download.
- The desktop app is unsigned. Homebrew does not set the quarantine flag, so
  it opens without the Gatekeeper "unidentified developer" prompt that a
  manual download from GitHub would trigger.
- Formulas and casks are updated with every release.
