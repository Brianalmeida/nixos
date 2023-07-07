{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell {
  buildInputs = [
    nixpkgs-fmt
    pkgs.vim
    pkgs.neovim
    # Enter other packages here
  ];

  shellHook = ''
    echo "Hello there"
  '';
}
