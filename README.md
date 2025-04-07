# WesVim 

This is my ongoing configuration for neovim.

WesVim Version 1.0 

```
NVIM v0.10.4
Build type: Release
LuaJIT 2.1.1713484068
```

Find releases of neovim here: 
https://github.com/neovim/neovim/releases

The following command will install under `$HOME/neovim`:

```
rm -r build/  # clear the CMake cache
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install
export PATH="$HOME/neovim/bin:$PATH"
```

# Plugins

Uses Lazy plugin manager.

- Lazy plugin manager: https://github.com/folke/lazy.nvim
- Which-key for contextual popup for motions https://github.com/folke/which-key.nvim
- Alpha greeting screen 
- Treesitter 
- Fugitive https://github.com/tpope/vim-fugitive
- nvim-tree file side bar
- vim-moonfly-colors colorscheme
- bufferline shows active buffers at top of the screen
- telescope
- toggleterm
- undotree
- lsp-zero
- nvim-autopairs
- vim-gitgutter

Not necessary, but recommended:
- mini.icons
- nvim-web-devicons
- nerd font
