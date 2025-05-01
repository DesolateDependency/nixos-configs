{ config, lib, pkgs, ... }: {

  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  
  networking.hostName = "initHost";
  networking.networkmanager.enable = true;
  networking.firewall.allowedTCPPorts

  time.timeZone = "Europe/Berlin";

  i18n.defaultLocale = "en_US.UTF-8";
  console.useXkbConfig = true;

  services.xserver.xkb.layout = "de";
  services.openssh = {
  enable = true;
  ports = [ 22 ];
  settings = {
    PasswordAuthentication = true;
    AllowUsers = null; # Allows all users by default. Can be [ "user1" "user2" ]
    UseDns = true;
    X11Forwarding = false;
    PermitRootLogin = "prohibit-password";
  };

  users.users.<username-of-later-config> = {
    isNormalUser = true;
    extraGroups = [ "wheel" "input" "networkmanager" ];
  };

  environment.systemPackages = with pkgs; [
    git
    home-manager
  ];

  nix.settings.experimental-features = ["nix-command" "flakes"];

  system.stateVersion = "24.11";
}
