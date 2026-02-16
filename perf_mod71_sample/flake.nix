{
  description = "Perf Mod 71 Analysis Tool";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      packages.${system}.default = pkgs.rustPlatform.buildRustPackage {
        pname = "perf-mod71-sample";
        version = "0.1.0";
        
        src = ./.;
        
        cargoLock = {
          lockFile = ./Cargo.lock;
        };
      };

      devShells.${system}.default = pkgs.mkShell {
        buildInputs = with pkgs; [
          cargo
          rustc
          rust-analyzer
        ];
      };
    };
}
