# :closed_umbrella: DOTFILES

## :hatching_chick: File Structure

### `hosts`
- **aura**: MacBook-Air(M1,2020)

### `modules`

Shared NixOS modules

### `home-manager`

- **cli**: Command-line tools

- **gui**: GUI applications

## :comet: Setup

### Requirements

- Nix command & Flakes are enabled

### Commands

#### nixos modules

```nix
nix develop
switch-nixos "<hostname>"
reboot
```

#### darwin modules

```nix
nix develop
switch-darwin "<hostname>"
```

#### home-manager

```nix
nix develop
switch-home "<username>@<hostname>"
```
