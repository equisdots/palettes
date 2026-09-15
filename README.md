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
| `index.json` | Ordered list: slug + display name + 8 preview colors |
| `schema.json` | Contract v1 (fields, hex format, roles) |
| `tools/validate_palettes.py` | Validator (stdlib only) |

## Validate

```bash
python3 tools/validate_palettes.py
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

MIT — see `LICENSE`.
