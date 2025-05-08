{ ... }: {

  imports = [

    # programs
    ./programs/virt-manager.nix
    ./programs/virt-viewer.nix
    ./programs/win-virtio.nix
    ./programs/spice.nix

    # virtualisation
    ./virtualisation/libvirtd.nix

  ];
}