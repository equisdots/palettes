# palettes

Color palettes for the [equisdots](https://github.com/equisdots) desktop.
Plain JSON files: base16 (`color0`..`color15`) + `background`/`foreground` +
optional `roles` overrides. `index.json` is the ordered list that consumers
(the Quickshell panel, theme-sync) use as their model.

Version: **0.1.0** · License: AGPL-3.0-or-later for original work; community palettes excluded (see [ATTRIBUTION.md](ATTRIBUTION.md))

## Layout

| Path | Content |
|---|---|
| `*.json` | One palette per slug (`x.json`, `tokio.json`, …) |
| `community/` | Community palettes (base16 ports of well-known terminal themes) + `README.md` with full attribution, license scope and removal policy |
| `index.json` | Ordered list: slug + display name + 8 preview colors + `category` (`x` / `custom` / `user`) + optional `path` |
| `schema.json` | Contract v1 (fields, hex format, roles) |
| `tools/validate_palettes.py` | Validator (stdlib only) |
| `ATTRIBUTION.md` | License scope: original/base work vs. third-party community palettes |

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

The AGPL covers this repository's original code, schema, tooling, documentation, `index.json` structure, and the base/built-in `x` palettes authored by xscriptor. If you modify that work and let users interact with it over a network, you must offer them the corresponding source.

**The community palettes are excluded from the AGPL.** The files under `community/` are third-party ports of base16 schemes; they remain attributable to their original authors and are not relicensed by this repository. See [ATTRIBUTION.md](ATTRIBUTION.md) and [community/README.md](community/README.md) for the full author table and upstream terms.

Community palettes may be corrected, replaced, or removed at any time, including immediately at the request of their author or rights holder. Contact x@xscriptor.com or open an issue with the palette slug. Palettes created by users at runtime (`category: user`) are user data and remain with their creators.

Releases published before 2026-11-13 were distributed under the MIT License and remain available under those terms.

Third-party components, fonts, icons, images, sounds, vendored code and other assets keep their original licenses and are not covered by this license. See [ATTRIBUTION.md](ATTRIBUTION.md) for the palette-specific scope.
