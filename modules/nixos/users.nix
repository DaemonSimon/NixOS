# modules/nixos/users.nix
# Paper for who lives in the house - from configuration.nix:70
{ config, pkgs, ... }:
{
  users.users."simon" = {
    isNormalUser = true;
    description = "Simon";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [];
  };
}
