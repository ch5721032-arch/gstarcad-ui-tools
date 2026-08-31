# GstarCAD UI Tools 🎛️

Customize the GstarCAD interface without digging through menus: load toolbars dynamically, batch-define command aliases, and back up your UI configuration.

Works with **GSTARCAD**, AutoCAD, ZWCAD, and BricsCAD.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)

## Contents

- [About](#about)
- [Scripts Overview](#scripts-overview)
- [Quick Start](#quick-start)
- [Compatibility](#compatibility)
- [Contributing](#contributing)
- [License](#license)

## About

A well-organized interface saves minutes on every task. These free tools help you set up a CAD environment that fits the way you work:

- Load a custom toolbar or menu file with a single command
- Define dozens of command aliases from a simple text list
- Back up your UI and profile configuration before reinstalling or migrating

All scripts are tested with **[GSTARCAD](https://www.gstarcad.net)** and major DWG-based CAD platforms.

## Scripts Overview

| Script | Description |
|--------|-------------|
| `menu-load.lsp` | Load a custom menu/toolbar file by path |
| `alias-batch.lsp` | Define command aliases in batch from a text file |
| `ui-backup.py` | Back up profile and customization files to a folder |

## Quick Start

1. Download a `.lsp` file
2. Run `APPLOAD` and load the file
3. Type `MenuLoad`, `AliasBatch`, or run the Python backup script

## Compatibility

Standard AutoLISP. Tested on GstarCAD 2026/2027. For interface and
customization guides, visit the [GSTARCAD learning center](https://www.gstarcad.net/cad/)
or the [GSTARCAD Blog](https://blog.gstarcad.net). Download the latest
software from the [official GstarCAD website](https://www.gstarcad.net).

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md).

## License

MIT — see the [LICENSE](LICENSE) file.
