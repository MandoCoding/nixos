# gruvbox-plux.nix

{ pkgs }:

pkgs.stdenv.mkDerivation {
	name = "gruvbox-plus";

	src = pkgs.fetchurl {
		url = "https://github.com/SylEleuth/gruvbox-plus-icon-pack/releases/.../pack.zip";
		sha256 = "3ca3360b974160a5e4e9554817ea2c18cbac947fd018988e436abfec22051955";
	};

	dontUnpack = true;
	installPhase = ''
	mkdir -p $out
	${pkgs.unzip}/bin/unzip $src -d $out/
}
