{ pkgs, pkgs-stable, ... }:

{ 
  home = {
    packages = with pkgs; [
      hello
      kitty
      eza
      bat
      kitty-themes
      fastfetch 

      prismlauncher
      easyeffects
      gajim
      librewolf
      lutris
      obs-studio
      qbittorrent
      steam
      vscodium
      cinny

      catppuccin-kde
      catppuccin-qt5ct
    ];
  };
}
