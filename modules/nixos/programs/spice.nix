{ pkgs, ... }: {

  environment.systemPackages = with pkgs; [
    spice
    spice-gtk
    spice-protocol
    win-spice
  ];
}