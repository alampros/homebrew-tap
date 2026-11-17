# alampros/homebrew-tap

Personal Homebrew tap for distributing macOS apps.

## Usage

```bash
brew tap alampros/tap
brew install --cask alampros/tap/jargonary
```

## Available Casks

The fully qualified install command trusts only the Jargonary cask; no separate `brew trust` command is required. See [Homebrew tap trust](https://docs.brew.sh/Tap-Trust#installing-from-a-tap).

| Cask | Description |
|---|---|
| `jargonary` | Team-owned glossaries in one searchable UI |

## Updating

```bash
brew upgrade --cask jargonary
```

Start with `jargonary -f /path/to/glossary.yaml -format yaml`, then open [localhost:8080](http://localhost:8080/).

The Jargonary cask supports Apple Silicon and Intel Macs and installs a release binary with the web UI bundled. Releases update the cask automatically. The cask removes the quarantine attribute from the executable because the release binaries are not Apple-notarized.
