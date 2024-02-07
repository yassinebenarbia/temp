# How To
## Use This Thing
To get up and running you need a few things first:
1. check if nix is installed using `nix --version`, if not check [this wiki](https://nixos.org/download.html) to install nix correctly under your system.
2. check if the nix [flakes](https://nixos.wiki/wiki/Flakes) option are enabled using this command `nix flake show template`, if an error omitted, check [this wiki pakge](https://nixos.wiki/wiki/Flakes) on how to enable them.

and that's it, now you cd under this directory (where the flake.nix file is located) and run `nix develop` which will install necessery dependencies and opens jupyter on your default browser.
# Notes:
## about `*.nix` files
These are [nix](https://nixos.org/) [flakes](https://nixos.wiki/wiki/Flakes) models used to setup the local environement to run pose estimation AI models.
> still didn't decide which AI model to use, yet
## tested pose estimation modes
1. MoveNet
