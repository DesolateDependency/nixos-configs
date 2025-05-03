{ ... }: {
  imports = [

    # programs
    ./programs/plasma.nix
    ./programs/librewolf.nix
    ./programs/bash.nix
    ./programs/git.nix
    ./programs/home-manager.nix
    ./programs/vscode.nix
    ./programs/protonvpn-gui.nix

    # file
    ./file/foot.nix

  ];
}
