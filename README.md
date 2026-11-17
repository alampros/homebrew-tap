# alampros/homebrew-tap

Personal Homebrew tap for distributing macOS apps.

## Usage

```bash
brew tap alampros/tap
brew install --cask jargonary
```

## Available Casks

| Cask | Description |
|---|---|
| `jargonary` | Team-owned glossaries in one searchable UI |

## Updating

```bash
brew upgrade --cask jargonary
```

Start with `jargonary -f /path/to/glossary.yaml -format yaml`, then open [localhost:8080](http://localhost:8080/).

The Jargonary cask supports Apple Silicon and Intel Macs and installs a release binary with the web UI bundled. Releases update the cask automatically. The cask removes the quarantine attribute from the executable because the release binaries are not Apple-notarized.
