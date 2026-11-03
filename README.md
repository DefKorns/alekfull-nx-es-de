# Alekfull NX for the NES/SNES Classic EmulationStation

[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit)](https://github.com/pre-commit/pre-commit)

A port of [Alekfull NX (ES-DE edition)](https://github.com/anthonycaccese/alekfull-nx-es-de) to the format of the
[EmulationStation port](https://github.com/DefKorns/es-port) (branch `classicmini`) for the NES/SNES Classic, packaged
as a hakchi hmod. The original is for ES-DE; this branch reads on the 2.12 theme format the port uses, without changes to
the program.

## What is ported

- **System view:** the carousel with the selector fixed at 22.7 % of the width, square cards, the system name, the game
  count with the favourites, and the background art with the fade. The carousel box is wider than the screen so the
  selected card sits where the selector is.
- **List view:** the `detailed` view, with the list on the dark panel with its row lines, the cover, the metadata chips
  (rating, game code, year and players) and the description.
- One configuration only: dark colours, 16:9, medium size. The light variant, the font sizes and the other aspect ratios
  of the original are not ported.

## What is not

- The status bar, the clock and the per-collection labels: the 2.12 format has no elements for them.
- The name under every card: only the selected system shows it.

## Install

Install `es_theme_alekfull_nx.hmod` with hakchi. It places the theme in `/etc/emulationstation/themes/alekfull_nx`.

## Build

The hmod is built with the shared [hmod-build](https://github.com/DefKorns/hmod-build) workflow, pinned as a submodule:

```sh
git submodule update --init
sh vendor/hmod-build/docker-make.sh
```

The result is `out/es_theme_alekfull_nx.hmod`. The version comes from the git tag.

## Layout

- `mod/etc/emulationstation/themes/alekfull_nx/theme.xml`: the system view and the list view.
- `.../_inc/systems/`: `carousel-icons/<theme>.png`, `backgrounds/<theme>.jpg` (`_default.jpg` for a console without one)
  and `logos/<theme>.svg`, named after the `<theme>` of each system in `es_systems.cfg`. Only the consoles the port uses
  are here; the rest is in the `main` branch.
- `.../_inc/images`, `fonts` and `sounds`: the panels, selector, fonts and sounds.
- `resources/`: the template the original uses to make the backgrounds.

## Credits and licence

All original artwork and layouts were designed and created by [fagnerpc](https://github.com/fagnerpc) (Alekfull NX);
some artwork was created by ClassicxCola. The ES-DE edition is by
[anthonycaccese](https://github.com/anthonycaccese/alekfull-nx-es-de).

Creative Commons Attribution-NonCommercial-ShareAlike 2.0 (<https://creativecommons.org/licenses/by-nc-sa/2.0/>): you are
free to share and adapt this theme as long as you give attribution to the authors above and share any change under the
same licence. The console and system logos and the artwork shown belong to their owners.
