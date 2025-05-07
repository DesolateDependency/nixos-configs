{ pkgs, ... }: {

  services.displayManager.ly = {
    enable = true;
    settings = {

      # Remove power management command hints
      hide_key_hints = true;

      # Erase password input on failure
      clear_password = true;
    };
  };
}
