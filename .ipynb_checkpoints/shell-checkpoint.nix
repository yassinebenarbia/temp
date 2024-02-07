{ pkgs ? import <nixpkgs> {} }{
  pkgs.mkShel {
    nativeBuildInputs = with pkgs.buildPackages; [
    cowsay
    ];
  }


  }
}
