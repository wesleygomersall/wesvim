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

Clone this directory and copy or rename it to the following path: 

```bash
~/.config/nvim
```

After this, everything should install with Lazy package manager when you start neovim.

## Building neovim from source

Find releases of neovim here: 
https://github.com/neovim/neovim/releases

The following command will install under `$HOME/neovim`:

```
rm -r build/  # clear the CMake cache
make CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim"
make install
export PATH="$HOME/neovim/bin:$PATH"
```

To uninstall after this, use 

```
sudo rm /usr/local/bin/nvim
sudo rm -r /usr/local/share/nvim/
```

Or just download and unpack the `.tar.gz` from latest release and set alias to
it. I find this the simplest on remote.

## Plugins

Uses Lazy plugin manager: https://github.com/folke/lazy.nvim
- Which-key https://github.com/folke/which-key.nvim
- Alpha greeting screen https://github.com/goolord/alpha-nvim
- Treesitter https://github.com/nvim-treesitter/nvim-treesitter
- vim-moonfly-colors colorscheme https://github.com/bluz71/vim-moonfly-colors
- bufferline shows active buffers at top of the screen https://github.com/akinsho/bufferline.nvim
- telescope https://github.com/nvim-telescope/telescope.nvim
- toggleterm https://github.com/akinsho/toggleterm.nvim
- undotree https://github.com/jiaoshijie/undotree
- vim-gitgutter https://github.com/airblade/vim-gitgutter
- Fugitive https://github.com/tpope/vim-fugitive
- mini.icons https://github.com/nvim-mini/mini.icons
- Typst live preview https://github.com/chomosuke/typst-preview.nvim
- nerd font
