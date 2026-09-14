# Simon's NixOS - Modular House

One big paper split into many small papers.

## Where to add what?

- New SYSTEM program (needs boss key, for everyone): `modules/nixos/packages.nix` -> `environment.systemPackages`
- New PERSONAL program (only for simon, no boss key): `modules/home/packages.nix` -> `home.packages`
- Sound: `modules/nixos/audio.nix`
- Screen: `modules/nixos/desktop.nix`
- Network: `modules/nixos/networking.nix`
- Language/time/keyboard: `modules/nixos/locale.nix`
- Boot: `modules/nixos/boot.nix`
- Extra helpers (flatpak, duplicati): `modules/nixos/services.nix`
- User simon settings: `modules/nixos/users.nix`
- Nix settings: `modules/nixos/nix.nix`

- Home dotfiles (hypr, fuzzel, caelestia): copy files to `modules/home/dotfiles/` and enable line in `modules/home/hypr.nix`

## How to install a program?

1. Open `modules/home/packages.nix`
2. Add name to list, e.g. `spotify`
3. Find names at https://search.nixos.org
4. Run: `sudo nixos-rebuild switch --flake .#nixos`
5. Photo: `git add . && git commit -m "add spotify"`

## Build & test

```bash
sudo nixos-rebuild dry-build --flake .#nixos  # test without changing
sudo nixos-rebuild switch --flake .#nixos     # make it real
```

## Structure

```
flake.nix               # front door - which boxes to load
hosts/nixos/            # your house "nixos"
modules/nixos/          # house papers
modules/home/           # your room papers (home-manager)
```
