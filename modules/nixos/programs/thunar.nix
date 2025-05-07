{ pkgs, ... }: {

  environment.systemPackages = [ 
    pkgs.xfce.thunar 
    # pkgs.xfce.thunar-volman
  ];
  
  # Automount
  services.gvfs.enable = true;
}