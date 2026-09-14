# modules/nixos/boot.nix
# Paper for how the house starts - the boot loader
{ config, pkgs, ... }:
{
  # Use the systemd-boot EFI boot loader - from configuration.nix:29
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
}
