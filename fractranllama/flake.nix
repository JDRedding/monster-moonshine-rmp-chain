{
  description = "FractranLlama: LLM Inference via FRACTRAN";

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
        pname = "fractranllama";
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
