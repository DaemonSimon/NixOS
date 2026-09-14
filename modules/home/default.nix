# modules/home/default.nix
# This box loads all YOUR ROOM papers
{ config, pkgs, ... }:
{
  imports = [
    ./packages.nix
    ./hypr.nix
    ./shell.nix
    ./fish.nix
  ];

  # Your name and where your room is - MUST match users.users.simon in nixos/users.nix
  home.username = "simon";
  home.homeDirectory = "/home/simon";
  home.stateVersion = "26.05"; # same as system.stateVersion

  # Let home-manager manage itself
  programs.home-manager.enable = true;
}
