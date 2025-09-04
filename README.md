```
  _      __      _   ___       
 | | /| / /__ __| | / (_)_ _   
 | |/ |/ / -_|_-< |/ / /  ' \  
 |__/|__/\__/___/___/_/_/_/_/  

WesVim Version 1.1

NVIM v0.11.1
Build type: Release
LuaJIT 2.1.1744318430
```

## Building neovim from source 

[Neovim releases](https://github.com/neovim/neovim/releases)

Install to `$HOME/neovim`:

```
rm -r build/  # clear the CMake cache
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install
export PATH="$HOME/neovim/bin:$PATH"
```

To uninstall:

```
sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim/
```

## LSP

For an LSP to work it must be manually downloaded. 
See `lsp/` in the [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
repo.

## Plugins

Uses [Lazy plugin manager](https://github.com/folke/lazy.nvim)
- [Which-key](https://github.com/folke/which-key.nvim)
- [Alpha greeting screen](https://github.com/goolord/alpha-nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [vim-moonfly-colors](colorscheme https://github.com/bluz71/vim-moonfly-colors)
- [bufferline](https://github.com/akinsho/bufferline.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [toggleterm](https://github.com/akinsho/toggleterm.nvim)
- [undotree](https://github.com/jiaoshijie/undotree)
- [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
- [Fugitive](https://github.com/tpope/vim-fugitive)
- [mini.icons](https://github.com/nvim-mini/mini.icons)
- [Typst live preview](https://github.com/chomosuke/typst-preview.nvim)
- [nerd font](https://www.nerdfonts.com)
