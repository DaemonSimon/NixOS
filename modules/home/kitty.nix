# modules/home/kitty.nix
# Paper for your kitty terminal - starts fish automatically
{ config, pkgs, ... }:
{
  programs.kitty = {
    enable = true;
    settings = {
      shell = "${pkgs.fish}/bin/fish";
      font_family = "JetBrains Mono";
      font_size = 12;
      background_opacity = "0.9";
      confirm_os_window_close = -1;
      enable_audio_bell = "no";
    };
    extraConfig = ''
      # Custom keyboard shortcuts - launch fish commands
      # Launch new terminal with rebuild
      map ctrl+shift+r launch --type=overlay fish -c "cd /etc/nixos && sudo nixos-rebuild switch --flake .#nixos"
      # Launch new terminal with update
      map ctrl+shift+u launch --type=overlay fish -c "cd /etc/nixos && nix flake update"
      # Launch new terminal with test rebuild
      map ctrl+shift+t launch --type=overlay fish -c "cd /etc/nixos && sudo nixos-rebuild dry-build --flake .#nixos"
    '';
  };
}
