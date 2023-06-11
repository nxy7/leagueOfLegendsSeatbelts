{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-23.05";
    dream2nix.url = "github:nix-community/dream2nix";
    # src.url =
    #   "https://files.pythonhosted.org/packages/5a/86/5f63de7a202550269a617a5d57859a2961f3396ecd1739a70b92224766bc/aiohttp-3.8.1.tar.gz";
    # src.flake = false;
  };
  description = "A very basic flake";

  outputs = { self, dream2nix, nixpkgs, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      devShell.${system} = pkgs.mkShell {
        packages = with pkgs;
          [
            python312
            # python312Packages.pip
            # python311.pip
            # python312Packages.virtualenv
            # python312Packages.python-lsp-server
          ];
      };
    };
  #  // (dream2nix.lib.makeFlakeOutputs {
  #   systems = [ "x86_64-linux" ];
  #   config.projectRoot = ./.;
  #   source = ./.;
  #   projects = ./projects.toml;
  # });

}
