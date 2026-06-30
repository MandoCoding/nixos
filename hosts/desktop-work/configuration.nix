{ pkgs, ... }:

{
  imports = [
    ## pull device specific config
    ./hardware-configuration.nix

    ## define nixos behavior
    ../../modules/policy/locale.nix
    ../../modules/policy/cleanup.nix
    ../../modules/policy/nix-policy.nix

    ## enable basic desktop services
    ../../modules/services/audio.nix
    ../../modules/services/bluetooth.nix

    ## enable desktops
    ../../modules/desktop/desktop-base.nix
    # ../../modules/desktop/hyprland.nix
    ../../modules/desktop/kde.nix

    ## enable additional services
    ../../modules/services/docker.nix
    # ../../modules/services/localsend.nix
    # ../../modules/services/tailscale.nix

    ## install applications
    ../../modules/packages/fonts.nix
    ../../modules/packages/terminal.nix
    ../../modules/packages/dev.nix
    ../../modules/packages/virt.nix
    ../../modules/packages/general.nix
    # ../../modules/packages/creative.nix
    # ../../modules/packages/gaming.nix
    ../../modules/packages/office.nix

  ];

  # Keep host identity here. Do not abstract this too early.
  networking.hostName = "nixos-desktop";
  users.users.mando = {
    isNormalUser = true;
    description = "mando";
    extraGroups = [ "networkmanager" "wheel" ];
  };

  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # Keep bootloader here too unless all machines are identical.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  system.stateVersion = "26.05";
}