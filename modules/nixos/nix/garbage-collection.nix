{ ... }: {

  # Automatic garbage collection of old system generations
  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 30d";
  };
}
