{ ... }: {

  imports = [

    # users
    ./users/desdpy.nix

    # boot
    ./boot/systemd-boot.nix
    ./boot/plymouth.nix

    # network
    ./networking/networkmanager.nix

    # services
    ./services/keymap-de.nix
    ./services/pipewire.nix
    ./services/xserver.nix
    ./services/sddm.nix
    ./services/plasma6.nix
    ./services/gnome-keyring.nix

    # nix
    ./nix/garbage-collection.nix
    ./nix/experimental-features.nix

    # misc
    ./misc/defaultLocale.nix
    ./misc/console.nix

  ];
}
