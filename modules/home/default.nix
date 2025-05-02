{ ... }: {
  imports = [

    # programs
    ./programs/plasma.nix
    ./programs/librewolf.nix
    ./programs/bash.nix
    ./programs/git.nix
    ./programs/home-manager.nix
    ./programs/vscode.nix

    # file
    ./file/foot.nix

  ];
}
