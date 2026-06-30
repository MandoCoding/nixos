{
  nixpkgs.config.allowUnfree = true;
  programs.nix-ld.enable = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];
}