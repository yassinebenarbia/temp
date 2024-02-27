# This is to initiate the default virtual environement
{ pkgs ? import <nixpkgs> {} }: 
pkgs.mkShell {

  nativeBuildInputs = with pkgs.buildPackages; [
    python3
      jupyter
      gcc-unwrapped
      ffmpeg
      libGL
      wget
      python311Packages.ipykernel
      python311Packages.opencv4
      python311Packages.scikit-learn
      gtk2
      pkg-config
      
  ];

  LD_LIBRARY_PATH = "${pkgs.stdenv.cc.cc.lib}/lib/:/run/opengl-driver/lib/";
# using pip here in case some packages are not available in 
# the nix store, e.g. tensorflow_hub, sklearn, etc.
    # 
  shellHook = ''
    echo "welcome to ur shell environement"
    python -m venv venv 
    source ./venv/bin/activate
    python -m ipykernel install --user --name=venv
    cd venv
    mkdir models
    cp ../model.keras ./models/
    ln -s ../MoveNet_Test_Notebook.ipynb .
    jupyter notebook --allow-root
    '';
}
