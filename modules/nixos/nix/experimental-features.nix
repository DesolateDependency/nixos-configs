{ ... }: {

  # Enable experimental features like flakes
  nix.settings.experimental-features = ["nix-command" "flakes"];
}
