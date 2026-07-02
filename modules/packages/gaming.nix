{ pkgs, ... }:

{

  # special permissions
    programs.steam.gamescopeSession.enable = true;
    programs.gamemode.enable = true;
    hardware.xone.enable = true;
    hardware.xpadneo.enable = true;


environment.systemPackages = with pkgs; [
    # Launchers
    steam
    # heroic # commented out due to current pnpm CVE's
  ];
}
