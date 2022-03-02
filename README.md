# Rusty Glass

Nord and glass styled theme for LeftWM using mostly Rust software.

![Screenshot](https://raw.githubusercontent.com/toastloop/leftwm-nord/master/desktop.jpg)

Programs:

(Required)
- [LeftWM](https://github.com/leftwm/leftwm)
- [Polybar](https://github.com/polybar/polybar)
- [Rofi](https://github.com/davatorium/rofi)
- [Alacritty](https://github.com/alacritty/alacritty)
- [Picom-ibhagwan](https://github.com/ibhagwan/picom)
- [Pywal](https://github.com/dylanaraps/pywal)
- [Feh](https://github.com/derf/feh)
- [Sxhkd](https://github.com/baskerville/sxhkd)
- [i3lock-fancy-multimonitor](https://github.com/guimeira/i3lock-fancy-multimonitor)
- [playerctl](https://github.com/altdesktop/playerctl)

(Optional)
- [Fish Shell](https://fishshell.com/)
- [Starship Prompt](https://starship.rs/)
- [Macchina](https://github.com/macchina-cli/macchina)
- [Spotify-tui](https://github.com/Rigellute/spotify-tui) (w/ [Spotifyd](https://github.com/Spotifyd/spotifyd))
- [Sptlrx](https://github.com/raitonoberu/sptlrx)
- [Cava](https://github.com/karlstav/cava)


To Install:

1. Run `paru -S leftwm alacritty rofi feh sxhkd python-pywal i3lock-fancy-multimonitor playerctl` (will also work with yay or another aur helper).
2. Add the following to your leftwm `themes.conf` 
```ini
[[repos]]
url = "https://raw.githubusercontent.com/toastloop/themes/master/known.toml"
name = "toastloop"
definitions_version = 0
```
3. Run `leftism-theme update` then `leftwm-theme apply RustyGlass`
