# 💻 ColorSpace

Nord and powerline styled theme for LeftWM using mostly Rust software.

![Screenshot](https://raw.githubusercontent.com/toastloop/rustyglass/master/desktop.jpg)
![Screenshot2](https://raw.githubusercontent.com/toastloop/rustyglass/master/desktop2.jpg)

## 💕 Features

- Powerline polybar configuration
- Rounded Corners
- Kwase Blur
- Spotify Currently Playing
- Customized Rofi Launcher
- Built with Rust first

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

1. Run the following command (will also work with `yay` or another aur helper)

    ```bash
    paru --needed -S leftwm alacritty rofi feh sxhkd python-pywal nerd-fonts-noto-sans-mono i3lock-fancy-dualmonitors playerctl
    ```

2. Add the following to `~/.config/leftwm/themes.conf`

    ```ini
    [[repos]]
    url = "https://raw.githubusercontent.com/toastloop/themes/master/known.toml"
    name = "toastloop"
    definitions_version = 0
    ```

3. Finally, run

    ```bash
    leftwm-theme update && leftwm-theme apply ColorSpace
    ```

## 📝 Credits

- Based on the [leftwm-theme-main](https://github.com/AnthonyMichaelTDM/leftwm-theme-main) by [AnthonyMichael](https://github.com/AnthonyMichaelTDM/).
- Wallpaper from the [nordic-wallpapers](https://github.com/linuxdotexe/nordic-wallpapers) collection by [Sai Nivas](https://github.com/linuxdotexe).
- Rofi theme from the [config files](https://github.com/ishaan26/config_files) of [ishaan26](https://github.com/ishaan26/).
- README inspired by the [awesome-shell](https://github.com/Mofiqul/awesome-shell/) README.

### 🏳️‍🌈 Proud LGBT Creator
