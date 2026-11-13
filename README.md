# palettes

Color palettes for the [equisdots](https://github.com/equisdots) desktop.
Plain JSON files: base16 (`color0`..`color15`) + `background`/`foreground` +
optional `roles` overrides. `index.json` is the ordered list that consumers
(the Quickshell panel, theme-sync) use as their model.

Version: **0.1.0** · License: MIT

## Layout

| Path | Content |
|---|---|
| `*.json` | One palette per slug (`x.json`, `tokio.json`, …) |
| `community/` | Community palettes (base16 ports of well-known terminal themes) + `README.md` with full attribution and license notes |
| `index.json` | Ordered list: slug + display name + 8 preview colors + `category` (`x` / `custom` / `user`) + optional `path` |
| `schema.json` | Contract v1 (fields, hex format, roles) |
| `tools/validate_palettes.py` | Validator (stdlib only) |

## Validate

```bash
scripts/check.sh          # wrapper: python3 tools/validate_palettes.py
```

Checks every palette against the contract and that `index.json` lists exactly
the existing slugs.

## Consumption

- **theme-sync**: `theme-sync.sh --palettes <this repo>`
  (its default points to the live desktop copy below).
- **Quickshell panel**: reads the live copy at
  `~/.config/hypr/scripts/quickshell/dock/palettes`, which can be a symlink to
  a clone of this repo:

  ```bash
  ln -s ~/palettes ~/.config/hypr/scripts/quickshell/dock/palettes
  ```

## License

AGPL-3.0-or-later — see [LICENSE](LICENSE). Copyright (C) 2026 xscriptor <x@xscriptor.com>.

This repository is licensed under the GNU Affero General Public License, version 3 or any later version. If you modify the software and let users interact with it over a network, you must offer them the corresponding source.

Releases published before 2026-11-13 were distributed under the MIT License and remain available under those terms.

Third-party components, fonts, icons, images, sounds, vendored code and other assets keep their original licenses and are not covered by this license. See THIRD-PARTY.md / CREDITS.md where present.
