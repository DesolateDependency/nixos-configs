{ pkgs, ... }: {

  services.udev.extraRules = ''
      ACTION=="remove",\
       ENV{SUBSYSTEM}=="hidraw",\
       ENV{ID_VENDOR_FROM_DATABASE}=="Yubico.com",\
       ENV{ID_MODEL_FROM_DATABASE}=="Yubikey 4/5 U2F",\
       RUN+="${pkgs.systemd}/bin/loginctl lock-sessions"
  '';

}