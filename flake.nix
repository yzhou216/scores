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
          gnumake
          gyre-fonts
          lilypond-unstable-with-fonts
          makeFontsConf
          mkShell
          python3Packages
          stdenvNoCC
          texliveBasic
          wildmidi
          ;
        fontconfigFile = makeFontsConf {
          fontDirectories = [ gyre-fonts ];
        };
        # Just enough LaTeX for src/manuscript, kept explicit so the
        # sandboxed build stays offline
        texlive = texliveBasic.withPackages (
          ps: with ps; [
            geometry
            hyperref
            pgf
            tex-gyre
            xcolor
          ]
        );
      in
      {
        devShells.default = mkShell {
          packages = [
            gnumake
            lilypond-unstable-with-fonts
            python3Packages.python-ly
            texlive
            wildmidi
          ];

          env.FONTCONFIG_FILE = fontconfigFile;
        };

        packages.default = stdenvNoCC.mkDerivation {
          name = "scores";
          src = ./.;

          strictDeps = true;

          nativeBuildInputs = [
            lilypond-unstable-with-fonts
            texlive
          ];

          env.FONTCONFIG_FILE = fontconfigFile;

          preBuild = ''
            export XDG_CACHE_HOME="$(mktemp -d)"
            export TEXMFVAR="$(mktemp -d)"
          '';

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
