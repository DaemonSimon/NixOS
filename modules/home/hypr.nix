# modules/home/hypr.nix
# Paper for your screen look - Hyprland and your dotfiles
{ config, pkgs, ... }:
{
  # Copy your current Hyprland dotfiles into the new home-manager way
  # Your old files are in ~/.config/hypr - we will link them declaratively later
  # For now, home-manager will keep your existing files as-is.
  # To manage them with home-manager, uncomment below and copy files to dotfiles/hypr:
  #
  # xdg.configFile."hypr".source = ./dotfiles/hypr;
  # xdg.configFile."fuzzel/fuzzel.ini".source = ./dotfiles/fuzzel.ini;

  # Example placeholder - does nothing yet, just shows where to put things
  # home.file.".config/caelestia/shell.json".source = ./dotfiles/caelestia-shell.json;
}
