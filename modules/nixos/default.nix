# modules/nixos/default.nix
# This box loads all house papers.
{ ... }:
{
  imports = [
    ./boot.nix
    ./networking.nix
    ./locale.nix
    ./audio.nix
    ./desktop.nix
    ./services.nix
    ./users.nix
    ./nix.nix
    ./packages.nix
  ];
}
