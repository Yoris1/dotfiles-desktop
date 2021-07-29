# Yoris' personal rice
## Main Features
* 🎨 Custom script (`fehwal`) for dynamic theming of most programs (Thanks to [pywal](https://github.com/dylanaraps/pywal) and [pywalfox](https://addons.mozilla.org/en-US/firefox/addon/pywalfox/) )
* 💾 Built in local password manager ( GNU pass with the `passmenu` script modified to work with rofi ) 
* 🎹 Built in music controls and info for most music players ( using playerctl )
* 💻 BSPWM with vim keybinds
* 🖱️ Ranger as default file manager when opening files + dragon-drag-and-drop for gui app functionality
* 🔒 Secure screenlocking with [xsecurelock](https://github.com/google/xsecurelock)
* 📷 Custom screenshot script using scrot and gimp
## Screenshots
![screenshot 1](screenshots/2021-07-30-011756_1920x1080_scrot.png)
![screenshot 2](screenshots/2021-07-30-005742_1920x1080_scrot.png)

## Installation

Clone git repo into your home directory, then install the dotfiles with `./unstow`\
\
Most of the required packages are listed in `./packages`,
however some of them come from the [AUR](https://aur.archlinux.org/).
Refer to the [ Arch Wiki page ](https://wiki.archlinux.org/title/Arch_User_Repository) on how to install from there. 
  

## additional info

Dotfiles managed with GNU stow\
Stow currently has a bug with the --dotfiles option and directories. Until it's merged upstream, you can get my fork [here.](https://github.com/Yoris1/stow)
## todo
- [ ] add links to all the software in the README
- [ ] make sure README is clear
- [ ] make sure `./packages` has all of the necessary packages and nothing more
- [ ] mention stow bug workaround

### before going public
- [ ] make sure there is no personal information in the git backlog