with import <nixpkgs> {};

vim-full.customize {
    # Specifies the vim binary name.
    # E.g. set this to "my-vim" and you need to type "my-vim" to open this vim
    # This allows to have multiple vim packages installed (e.g. with a different set of plugins)
    name = "vim";
    vimrcConfig.customRC = ''
        # Here one can specify what usually goes into `~/.vimrc` 
        syntax enable
	set number 
	set relativenumber
    '';
}
