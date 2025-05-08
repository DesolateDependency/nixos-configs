{ pkgs, ... }: {

  home.packages = [ pkgs.kdePackages.dolphin ];

  # Needs service.gvfs for automounting
}