# modules/home/packages.nix
# YOUR shopping list - all programs that are only for YOU (no boss key needed)
# This is the same list that was in configuration.nix:89, now moved to your room
{ config, pkgs, inputs, ... }:

{
  home.packages = with pkgs; [
	opencode
	waybar
	yazi
	grim
	slurp
	wl-clipboard
	vesktop
	localsend
	kitty
	firefox
	vscode
	inputs.quickshell.packages.${pkgs.stdenv.hostPlatform.system}.default
	neovim
	ripgrep
	fd
	gcc
	gnumake
	unzip
	fuzzel
	git
	];
}
