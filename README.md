# YANG language support for Zed

Full [YANG](https://datatracker.ietf.org/doc/html/rfc7950) language support for the [Zed](https://zed.dev) IDE.

## Features

- **Syntax highlighting** using [tree-sitter-yang](https://github.com/Hubro/tree-sitter-yang).
- **Language Server Protocol (LSP)** using [yang-lsp](https://github.com/TypeFox/yang-lsp).
  - Code completion
  - Diagnostics and validation
  - Go to definition
  - Find references
  - Hover documentation

## Requirements

- **Java Runtime** - `yang-lsp` requires Java to run.
  - macOS: `brew install openjdk`
  - Ubuntu/Debian: `sudo apt install default-jdk`
  - RHEL/CentOS: `sudo yum install java-11-openjdk`

The language server is automatically downloaded on first use.

## Configuration

Configure yang-lsp through Zed's settings (`~/.config/zed/settings.json` or `.zed/settings.json` in your project):

```json
{
  "lsp": {
    "yang-lsp": {
      "settings": {
        "excludePath": "build:bin",
        "yangPath": "/path/to/yang/libs",
        "diagnostic": {
          "xpath-linking-error": "ignore",
          "missing-revision": "warning"
        }
      }
    }
  }
}
```

### Available Settings

| Setting | Description |
|---------|-------------|
| `excludePath` | Colon-separated paths to exclude from indexing (e.g., `"build:bin"`) |
| `yangPath` | Path to external YANG libraries (files, directories, or ZIP files) |
| `yangPathIgnore` | Paths to ignore within `yangPath` |
| `code-lens-enabled` | Enable/disable code lens (`"on"` or `"off"`) |
| `diagnostic` | Object mapping diagnostic codes to severities (`"error"`, `"warning"`, `"ignore"`) |

You can also create a `yang.settings` file in your project root for project-specific configuration.

## Credits

- [tree-sitter-yang](https://github.com/Hubro/tree-sitter-yang/) - Grammar for syntax highlighting. All grammar credits go to the original authors.
- [yang-lsp](https://github.com/TypeFox/yang-lsp) - Language server by TypeFox.
