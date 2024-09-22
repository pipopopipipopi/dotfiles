# :closed_umbrella: DOTFILES

NixOS & MacOS & home-manager configurations

## :hatching_chick: File Structure

### `hosts`
- **aura**: MacBook-Air(M1,2020)

- **lawine**: Desktop

### `modules`

Shared modules

- **nixos**: NixOS modules
    - **core**: General settings
    - **desktop**: Desktop environments
    - **programs**: Optional programs

- **darwin**: MacOS modules
    - **core**: General settings
    - **desktop**: Desktop environments
    - **programs**: Optional programs

### `home-manager`

- **cli**: Command-line tools

- **gui**: GUI applications

- **desktop**: Desktop environments

- **nixos**: NixOS settings

- **darwin**: MacOS settings

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
