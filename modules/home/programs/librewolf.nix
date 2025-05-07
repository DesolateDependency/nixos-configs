{ pkgs, ... }: {

  programs.librewolf = {
    enable = true;
    profiles = {
      default = {
        id = 0;
        name = "default";
        isDefault = true;
        settings = {
          "sidebar.verticalTabs" = true;
          "browser.toolbars.bookmarks.visibility" = "never";
          "browser.startup.page" = 3;
        };
        extensions.packages = with pkgs.nur.repos.rycee.firefox-addons; [
          bitwarden
          darkreader
          plasma-integration
        ];
      };
    };
  };
}
