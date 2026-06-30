{
  boot.loader.systemd-boot.configurationLimit = 10;

  nix.gc = {
    automatic = true;
    dates = "weekly";
    options = "--delete-older-than 7d";
  };
}