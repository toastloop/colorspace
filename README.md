# 💻 Rusty Glass

Nord and glass styled theme for LeftWM using mostly Rust software.

![Screenshot](https://raw.githubusercontent.com/toastloop/rustyglass/master/desktop.jpg)
![Screenshot2](https://raw.githubusercontent.com/toastloop/rustyglass/master/desktop2.jpg)

## 💕 Features

- Rounded Corners
- Glass Blur  (using dual_kawase blur)
- Spotify Currently Playing (using playerctl)
- Customized Rofi Launcher
- Built with Rust first.

## ⚒️ Dependencies

(Required)

- [LeftWM](https://github.com/leftwm/leftwm)
- [Polybar](https://github.com/polybar/polybar)
- [Rofi](https://github.com/davatorium/rofi)
- [Alacritty](https://github.com/alacritty/alacritty)
- [Picom-ibhagwan](https://github.com/ibhagwan/picom)
- [Pywal](https://github.com/dylanaraps/pywal)
- [Feh](https://github.com/derf/feh)
- [Sxhkd](https://github.com/baskerville/sxhkd)
- [i3lock-fancy-dualmonitors](https://aur.archlinux.org/packages/i3lock-fancy-dualmonitors-git)
- [playerctl](https://github.com/altdesktop/playerctl)
- [NerdFonts](https://www.nerdfonts.com/)

(Optional)

- [Fish Shell](https://fishshell.com/)
- [Starship Prompt](https://starship.rs/)
- [Macchina](https://github.com/macchina-cli/macchina)
- [Spotify-tui](https://github.com/Rigellute/spotify-tui) (w/ [Spotifyd](https://github.com/Spotifyd/spotifyd))
- [Sptlrx](https://github.com/raitonoberu/sptlrx)
- [Cava](https://github.com/karlstav/cava)
- [Nordic GTK Theme](https://github.com/EliverLara/Nordic)

## ⬇️ Install

1. Run 
```bash
paru --needed -S leftwm alacritty rofi feh sxhkd python-pywal nerd-fonts-noto-sans-mono i3lock-fancy-dualmonitors playerctl
``` 
(will also work with `yay` or another aur helper)

2. Add the following to `~/.config/leftwm/themes.conf` 
```ini
[[repos]]
url = "https://raw.githubusercontent.com/toastloop/themes/master/known.toml"
name = "toastloop"
definitions_version = 0
```
3. Finally, run
```bash
leftism-theme update && leftwm-theme apply RustyGlass
```


## 📝 Credits

- Based on the [leftwm-theme-main](https://github.com/AnthonyMichaelTDM/leftwm-theme-main) by [AnthonyMichael](https://github.com/AnthonyMichaelTDM/).
- Wallpaper from the wonderful [lambda-wallpapers](https://github.com/pagankeymaster/lambda-wallpapers) collection by [PaganKeyMaster](https://github.com/pagankeymaster/).
- Rofi theme from the [config files](https://github.com/ishaan26/config_files) of [ishaan26](https://github.com/ishaan26/).
- README inspired by [awesome-shell](https://github.com/Mofiqul/awesome-shell/) README.

### 🏳️‍🌈 Proud LGBT Creator
