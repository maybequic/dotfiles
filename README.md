<div align="center">

# Fork's shitty dotfiles

**I updated the dotfiles and made them a bit more minimal, if you want a more modern look please check out the old [repo on github](https://github.com/forkd96/dotfiles)**

</div>

\
**Hi there!** These are the dotfiles i daily drive

## Details
### Desktop
- OS: [NixOS](https://nixos.org/)
- WM: [niri](https://github.com/niri-wm/niri)
- Bar: [waybar](https://github.com/Alexays/Waybar)
- App launcher: [fsel](https://github.com/Mjoyufull/fsel), [otter-launcher](https://github.com/kuokuo123/otter-launcher)
- Wallpaper switcher: [matuwall](https://github.com/naurissteins/Matuwall)

### Terminal
- Terminal: [kitty](https://github.com/kovidgoyal/kitty)
- Fetch: [fastfetch](https://github.com/fastfetch-cli/fastfetch)
- Shell: [fish](https://github.com/fish-shell/fish-shell)
- Prompt: [tide](https://github.com/IlanCosman/tide)
- Notifications: [swaync](https://github.com/ErikReider/SwayNotificationCenter)

### Themes / Fonts
- Color scheme: [Catppuccin Macchiato](https://catppuccin.com/palette/) (primary color is blue / mauve in some places)
- Wallpapers: [orangci/walls-catppuccin-mocha](https://github.com/orangci/walls-catppuccin-mocha)
- Font: JetBrainsMono Nerd Font
- GTK theme: [Catppuccin by Fausto-Korpsvart](https://github.com/Fausto-Korpsvart/Catppuccin-GTK-Theme)

- All other app themes: [Catppuccin ports](https://catppuccin.com/ports/)

## Installation 
### NixOS:
> [!WARNING]  
> This will overwrite your existing configuration.nix file. Though, we're talking about NixOS so you can just roll back at any time.

```shell
sudo nixos-generate-config
cd ~
nix shell nixpkgs#git --command git clone https://codeberg.org/forkd/dotfiles
cd dotfiles
sudo ln -sf ~/dotfiles/nixos/flake.lock /etc/nixos/flake.lock
sudo ln -sf ~/dotfiles/nixos/flake.nix /etc/nixos/flake.nix
sudo ln -sf ~/dotfiles/nixos/configuration.nix /etc/nixos/configuration.nix
sudo nixos-rebuild switch
nix shell nixpkgs#home-manager --command home-manager switch --flake .#<REPLACE-ME-username>
```

### Other distros:
- Just drop in stuff from .config in the repo's root into your actual ~/.config and you're golden