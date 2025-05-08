{ pkgs, ... }: {

  home.packages = [
    pkgs.xfce.thunar
  ];
  
  # Needs service.gvfs for automounting
}