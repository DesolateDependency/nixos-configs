{ pkgs, lib, ... }:

  let
    linux-pam = pkgs.linux-pam;
    pam_u2f = pkgs.pam_u2f;
  in {

    security.pam.services.sudo.text = pkgs.lib.mkDefault (pkgs.lib.mkBefore ''
      # Extra authentication management.
      auth sufficient ${pam_u2f}/lib/security/pam_u2f.so cue
    '');

    security.pam.services.login.text = pkgs.lib.mkDefault (pkgs.lib.mkBefore ''
      # Extra authentication management.
      auth required ${linux-pam}/lib/security/pam_unix.so
      auth required ${pam_u2f}/lib/security/pam_u2f.so cue
    '');

    security.pam.services.kde.text = pkgs.lib.mkDefault (pkgs.lib.mkBefore ''
      # Extra authentication management.
      auth required ${linux-pam}/lib/security/pam_unix.so
      auth required ${pam_u2f}/lib/security/pam_u2f.so cue
    '');
  }