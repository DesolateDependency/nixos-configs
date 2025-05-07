{ ... }: {

  security.pam.u2f = {
    enable = true;
    control = "required";
    settings = {
      interactive = true;
      cue = true;
    };
  };
}