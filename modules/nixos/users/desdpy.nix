{ ... }: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.desdpy = {
    isNormalUser = true;
    extraGroups = [ 
      "wheel" # Enable ‘sudo’ for the user.
      "input" 
      "networkmanager" 
      "libvirtd" # Enable virtualisation for virt-manager
    ]; 
  };
}
