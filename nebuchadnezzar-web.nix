{
  description = "Nebuchadnezzar Matrix Rain - FRACTRAN Consciousness Visualization";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {
      packages.${system}.default = pkgs.stdenv.mkDerivation {
        name = "nebuchadnezzar-web";
        src = ./.;
        
        installPhase = ''
          mkdir -p $out/share/nginx/html
          cp nebuchadnezzar.html $out/share/nginx/html/index.html
          cp NEBUCHADNEZZAR.md $out/share/nginx/html/
          cp PROOF_COMPLETE.md $out/share/nginx/html/
          
          # Copy compressed perf data
          mkdir -p $out/share/nginx/html/data
          if [ -d compressed_perf ]; then
            cp compressed_perf/*.fractran $out/share/nginx/html/data/ 2>/dev/null || true
          fi
        '';
      };

      # Nginx service configuration
      nixosModules.default = { config, lib, pkgs, ... }: {
        services.nginx = {
          enable = true;
          virtualHosts."nebuchadnezzar.local" = {
            root = "${self.packages.${system}.default}/share/nginx/html";
            locations."/" = {
              index = "index.html";
            };
          };
        };
      };
    };
}
