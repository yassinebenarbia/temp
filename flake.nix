{
  description = "Nix environement";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
  };
  outputs = inputs@{ self, nixpkgs } : 
  let 
    system = "x86_64-linux";
    pkgs = import nixpkgs { inherit system; };
  in
  {
    inherit system;
    devShells.${system}.default = (import ./shell.nix {inherit pkgs;});
  };
}
