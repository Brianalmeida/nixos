{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell {
  buildInputs = [
    nixpkgs-fmt
    pkgs.vim
    pkgs.neovim
    
    # Rust packages 
    pkgs.rustup
    pkgs.cargo

    # Haskell packages 
    pkgs.ghc 
    pkgs.stack
    # Enter packages here
  ];

  shellHook = ''
    echo "==============================="
    echo "Hello there, you are now using a Nix shell"
    echo "==============================="
  '';
}
