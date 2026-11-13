# Changelog

All notable changes to the equisdots palette set are documented here.
Dates use YYYY-MM-DD.

## [2026-11-13]

### Added
- **Monochrome base palettes**: `Mono Red`, `Mono Green`, `Mono Blue`, `Mono Yellow`, `Mono Pink` and `Mono Gold` (`category: x`). Each is a Berlin-style black-background palette where the neutral/accent scale is replaced by variations of one hue (red, green, blue, yellow, pink or gold). Existing palettes were not modified.

### Changed
- **License scope and attribution**: the original code/tooling/docs and the 36 base `x` palettes remain AGPL-3.0-or-later; the 125 `community/` palettes are explicitly excluded as third-party works, remain attributed to their authors, and can be corrected or removed at any time on request. Added `ATTRIBUTION.md` and updated `README.md`, `NOTICE` and `community/README.md`.

## [2026-10-18]

### Added
- **Cyberpunk palettes**: 18 original built-in palettes under the `x` category — Night City, Arasaka, Militech and Netrunner (each with base, Alt, Mono and Mono Alt variants), plus Samurai and X. Mono variants keep a grayscale base with two signature accents.

## [2026-09-28]

### Added
- **Community palettes** (`community/`): 125 base16 ports of well-known terminal themes (Dracula, Monokai, Gruvbox and its material/light variants, Solarized, Nord, One Dark, Catppuccin, Tokyo Night and Tokyo City, Everforest, Rose Pine, Kanagawa, Edge, Horizon, Selenized, Synth Midnight, GitHub, Material, Atelier, and more), converted to the equisdots palette format with `name`, `slug`, original `author`, `background`/`foreground`, `base16` and the source `variant` for light/dark schemes.
- **Attribution README** (`community/README.md`): sources (tinted-theming/base16-schemes, MIT), the exact base16 to color0-15 mapping, a per-palette author table and a trademark/no-affiliation note.

### Changed
- **`index.json`**: entries now carry `category` (`x` for the built-in set, `custom` for community palettes, `user` for palettes created from the editor) and an optional `path` for files outside the root folder.
- **`tools/validate_palettes.py`**: recurses into subfolders so community palettes are validated too.
