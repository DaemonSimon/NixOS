# modules/home/hypr.nix
# Hyprland configuration — symlinked to ~/.config/hypr
{ config, pkgs, ... }:
{
  xdg.configFile."hypr".source = ./dotfiles/hypr;
}
