{ ... }: {
  # Enable sway window manager
  programs.sway = {
    enable = true;
    package = pkgs.swayfx;
  };
}
