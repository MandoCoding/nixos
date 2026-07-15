{ pkgs, inputs, ... }:

{
fonts.packages = with pkgs; [
    pkgs.nerd-fonts.go-mono
    nerd-fonts.jetbrains-mono

    # monospaced
   intel-one-mono
    noto-fonts
    noto-fonts-cjk-sans
    noto-fonts-color-emoji
    liberation_ttf
    fira-code
    fira-code-symbols
    mplus-outline-fonts.githubRelease
    dina-font
    proggyfonts
    ]
    ++ [
    #apple fonts
    inputs.apple-fonts.packages.${pkgs.stdenv.hostPlatform.system}.sf-pro
    inputs.apple-fonts.packages.${pkgs.stdenv.hostPlatform.system}.sf-mono
    inputs.apple-fonts.packages.${pkgs.stdenv.hostPlatform.system}.ny
    ];
}