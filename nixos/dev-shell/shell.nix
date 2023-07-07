{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell {
  buildInputs = [
    nixpkgs-fmt
    pkgs.vim
    pkgs.neovim
    pkgs.rustup
    pkgs.cargo
    # Enter packages here
  ];

  shellHook = ''
    echo "Hello there"
  '';
}
