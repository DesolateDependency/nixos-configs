{ pkgs, ... }: {

  security.pam.u2f = {
    enable = true;
    control = "required";
    settings = {
      interactive = true;
      cue = true;
    };
  };

  /* security.pam.services.login.text = ''
    auth required pam_unix.so
    auth required pam_u2f.so cue
  '';

  security.pam.services.sudo.text = ''
    auth sufficient pam_u2f.so cue
    auth required pam_unix.so nullok
  ''; */
}