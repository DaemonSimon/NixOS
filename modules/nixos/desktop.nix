# modules/nixos/desktop.nix
# Paper for what you see on the screen
{ config, pkgs, ... }:
{
  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
}
