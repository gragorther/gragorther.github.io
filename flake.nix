{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs-ruby.url = "github:bobvanderlinden/nixpkgs-ruby";
    nixpkgs-ruby.inputs.nixpkgs.follows = "nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      nixpkgs-ruby,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        ruby =
          (nixpkgs-ruby.lib.packageFromRubyVersionFile {
            file = ./.ruby-version;
            inherit system;
          }).overrideAttrs
            (old: {
              env = (old.env or { }) // {
                NIX_CFLAGS_COMPILE = ((old.env or { }).NIX_CFLAGS_COMPILE or "") + " -std=gnu17";
              };
            });

        gems = pkgs.bundlerEnv {
          name = "gemset";
          inherit ruby;
          gemfile = ./Gemfile;
          lockfile = ./Gemfile.lock;
          gemset = ./gemset.nix;
          groups = [
            "default"
            "production"
            "development"
            "test"
          ];
        };
      in
      {
        devShell =
          with pkgs;
          mkShell {
            buildInputs = [
              gems
              ruby
              bundix
            ];
          };
      }
    );
}
