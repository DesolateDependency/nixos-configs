.
├── flake.nix
├── docs/
│   ├── howToFix.md
│   ├── hyprland/
│   ├── ags/
│   ├── zfs/
│   └── btrfs/
├── hosts/
│   ├── desktop/
│   ├── server/
│   │   ├── rpi4/
│   │   └── ../
│   └── vm/
├── modules/
│   ├── common/
│   │   └── users/
│   │       ├── root/
│   │       │   ├── nixos/
│   │       │   └── home/
│   │       ├── me/
│   │       │   ├── nixos/
│   │       │   ├── home/
│   │       │   └── darwin/
│   │       └── guest/
│   │           ├── nixos/
│   │           ├── home/
│   │           └── darwin/
│   ├── nixos/
│   │   ├── core/
│   │   │   ├── bootloader/
│   │   │   │   └── default.nix
│   │   │   ├── zswap/
│   │   │   │   └── default.nix
│   │   │   ├── shell/
│   │   │   │   └── zsh/
│   │   │   │       └── default.nix
│   │   │   ├── nix/
│   │   │   │   └── options/
│   │   │   │       └── default.nix
│   │   │   ├── kernel/
│   │   │   └── ...
│   │   └── optional/
│   │       ├── wifi/
│   │       │   ├── home/
│   │       │   │   └── default.nix
│   │       │   └── work/
│   │       │       └── default.nix
│   │       ├── drivers/
│   │       │   └── gpu/
│   │       │       ├── amd/
│   │       │       └── nvidia/
│   │       └── .../
│   ├── home/
│   │   ├── core/
│   │   │   ├── zsh/
│   │   │   └── pkgs/
│   │   ├── optional/
│   │   │   ├── desktop/
│   │   │   │   ├── hyprland/
│   │   │   │   ├── ags/
│   │   │   │   └── ...
│   │   │   └── pkgs/
│   │   │       └── firefox/
│   │   └── users/
│   │       └── me/
│   │           ├── pkgs/
│   │           │   └── git/
│   │           └── ...
│   └── darwin/
│       ├── core/
│       └── optional/
├── secrets/
└── .sops.yaml
