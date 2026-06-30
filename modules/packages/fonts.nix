{ pkgs, ... }:

{
fonts.packages = with pkgs; [
  pkgs.nerd-fonts.go-mono
  nerd-fonts.jetbrains-mono
  intel-one-mono

  # comment
  noto-fonts
  noto-fonts-cjk-sans
  noto-fonts-color-emoji
  liberation_ttf
  fira-code
  fira-code-symbols
  mplus-outline-fonts.githubRelease
  dina-font
  proggyfonts
];
}