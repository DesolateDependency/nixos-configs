{ pkgs, ... }: {

  environment.systemPackages = [ pkgs.kdePackages.dolphin ];

  # Automount
  services.gvfs.enable = true;
}