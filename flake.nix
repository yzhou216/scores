{
  description = "Write and compile sheet music with LilyPond";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=master";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      nixpkgs,
      flake-utils,
      ...
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        inherit (import nixpkgs { inherit system; })
          mkShell
          stdenvNoCC
          gnumake
          lilypond-unstable-with-fonts
          wildmidi
          python3
          ;
      in
      {
        devShells.default = mkShell {
          packages = [
            gnumake
            lilypond-unstable-with-fonts
            python3.pkgs.python-ly
            wildmidi
          ];
        };

        packages.default = stdenvNoCC.mkDerivation {
          name = "scores";
          src = ./.;

          strictDeps = true;

          nativeBuildInputs = [ lilypond-unstable-with-fonts ];

          installPhase = ''
            runHook preInstall

            mkdir "$out"
            cp --recursive dist "$_"

            runHook postInstall
          '';
        };
      }
    );
}
