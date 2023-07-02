# Warning: this file is currently failing tests

with import <nixpkgs> {};


   let configVim = vim_configurable.customize {
     name = "vim";

     vimrcConfig.customRC = ''
        set number
        set autoindent
        set background=dark
        set cursorline
        syntax on
        colorscheme catppuccin_macchiato
     	set tabstop=2
        set shiftwidth=2
        set expandtab
        set spell
        set relativenumber
	set termguicolors
      '';
     };

     vimrcConfig.plug.plugins = with pkgs.vimPlugins; {
        start = [               # Plugins loaded on launch
          vim-plug               # Lean & mean status/tabline for vim that's light as air
	  fzf             # Solarized colours for Vim
	  vim-lsp
	  vim-lsp-settings    # Collection of themes for airlin
	  vim-nix
	  nerdtree
	  catppuccin              # Support for writing Nix expressions in vim
	 ];
     };



    vim-plug = pkgs.vimUtils.buildVimPlugin {
      name = "vim-plug";
      src = pkgs.fetchFromGitHub {
	owner = "junegunn";
	repo = "vim-plug";
	url = "https://github.com/junegunn/vim-plug";
	rev = "master";
	sha256 = null;
      };
    };


    fzf = pkgs.vimUtils.buildVimPlugin {
      name = "fzf";
      src = pkgs.fetchFromGitHub {
	owner = "junegunn";
	repo = "fzf";
	url = "https://github.com/junegunn/fzf";
	rev = "master";
	sha256 = null;
      };
    };

    vim-lsp = pkgs.vimUtils.buildVimPlugin {
      name = "vim-lsp";
      src = pkgs.fetchFromGitHub {
	owner = "prabirshrestha";
	repo = "vim-lsp";
	url = "https://github.com/prabirshrestha/vim-lsp";
	rev = "master";
	sha256 = null;
      };
    };


    vim-lsp-settings = pkgs.vimUtils.buildVimPlugin {
      name = "vim-lsp-settings";
      src = pkgs.fetchFromGitHub {
	owner = "mattn";
	repo = "vim-lsp-settings";
	url = "https://github.com/mattn/vim-lsp-settings";
	rev = "master";
	sha256 = null;
      };
    };


    nerdtree = pkgs.vimUtils.buildVimPlugin {
      name = "nerdtree";
      src = pkgs.fetchFromGitHub {
	owner = "preservim";
	repo = "nerdtree";
	url = "https://github.com/preservim/nerdtree";
	rev = "master";
	sha256 = null;
      };
    };

    catppuccin = pkgs.vimUtils.buildVimPlugin {
      name = "catppuccin";
      src = pkgs.fetchFromGitHub {
	owner = "catppuccin";
	repo = "vim";
	url = "https://github.com/catppuccin/vim";
	rev = "master";
	sha256 = null;
      };
    };
