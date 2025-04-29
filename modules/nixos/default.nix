{ ... }: {

imports = [

  # users
  ./users/desdpy.nix

  # boot
  ./boot/systemd-boot.nix

  # services
  ./services/keymap-de.nix
  ./services/pipewire.nix
  ./services/xserver.nix
  ./services/sddm.nix
  ./services/plasma6.nix
  ./services/gnome-keyring.nix

  # programs
  ./programs/librewolf.nix
  ./programs/tree.nix
  ./programs/git.nix
  ./programs/foot.nix

  ];
}
