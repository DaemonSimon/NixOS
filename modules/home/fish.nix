# modules/home/fish.nix
# Paper for your fish shell and shortcuts
{ config, pkgs, ... }:
{
  programs.fish = {
    enable = true;
    shellAbbrs = {
      rebuild = "sudo nixos-rebuild switch --flake .#nixos";
      update = "nix flake update";
      rebuild-test = "sudo nixos-rebuild dry-build --flake .#nixos";
    };
    shellAliases = {
      ll = "ls -la";
    };
    interactiveShellInit = ''
      echo "Welcome back Simon!"
    '';
  };
}
