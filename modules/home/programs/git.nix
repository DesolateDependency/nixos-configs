{ config, pkgs, ... }: {
  programs.git = {
    enable = true;
      userName = "DesDepy";
      userEmail = "desolatedependency@gmail.com";
      extraConfig = {
        init.defaultBranch = "main";
      };
  };
}
