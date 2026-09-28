# Changelog

All notable changes to the equisdots palette set are documented here.
Dates use YYYY-MM-DD.

## [2026-09-28]

### Added
- **Community palettes** (`community/`): 50 base16 ports of well-known terminal themes (Dracula, Monokai, Gruvbox, Solarized, Nord, One Dark, Catppuccin, Tokyo Night, Everforest, Material, Atelier, and more), converted to the equisdots palette format with `name`, `slug`, original `author`, `background`/`foreground` and `base16`.
- **Attribution README** (`community/README.md`): sources (tinted-theming/base16-schemes, MIT), the exact base16 to color0-15 mapping, a per-palette author table and a trademark/no-affiliation note.

### Changed
- **`index.json`**: entries now carry `category` (`x` for the built-in set, `custom` for community palettes, `user` for palettes created from the editor) and an optional `path` for files outside the root folder.
- **`tools/validate_palettes.py`**: recurses into subfolders so community palettes are validated too.
