{ ... }: {
  imports = [

    # programs
    ./programs/librewolf.nix
    ./programs/bash.nix
    ./programs/git.nix
    ./programs/home-manager.nix
    
    # file
    ./file/foot.nix

  ];
}
