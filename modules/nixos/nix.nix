# modules/nixos/nix.nix
# Paper for Nix itself and allowing apps that are not fully free
{ config, pkgs, ... }:
{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nixpkgs.config.allowUnfree = true;
}
