{ pkgs, ... }: {

  programs.sway = {
    enable = true;
    package = pkgs.swayfx;
  };

  environment.systemPackages = [
    pkgs.autotiling
  ];
}