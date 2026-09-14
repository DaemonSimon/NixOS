# modules/home/fish.nix
# Paper for your fish shell and shortcuts
{ config, pkgs, ... }:
{
  programs.fish = {
    enable = true;
    shellAbbrs = {
      rb = "sudo nixos-rebuild switch --flake .#nixos";
      up = "nix flake update";
      test = "sudo nixos-rebuild dry-build --flake .#nixos";
      gs = "git status";
      gc = "git add . && git commit";
      gp = "git push";
    };
    shellAliases = {
      ll = "ls -la";
    };
    interactiveShellInit = ''
      echo "Welcome back Simon!"
    '';
  };
}
