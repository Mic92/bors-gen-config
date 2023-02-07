{
  description = "Development environment for this project";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = inputs@{ self, flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } ({ lib, ... }: {
      systems = lib.systems.flakeExposed;
      perSystem = { pkgs, ... }: {
        packages.default = pkgs.stdenv.mkDerivation {
          name = "bors-gen-config";
          src = self;
          buildInputs = [ pkgs.python3 ];
          installPhase = ''
            install -m755 -D bors-gen-config.py $out/bin/bors-gen-config
          '';
        };
      };
    });
}
