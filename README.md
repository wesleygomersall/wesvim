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

## For NVIM <11.0 

Uncomment the line in `init.lua`: `require("lsp")` 

```
require("keymaps")
require("options")

require("lazy-config")
require("bufferline").setup{}
require("nvim-tree").setup{}
-- require("lsp") --NVIM <11.0 uncomment this
require("autopair")
require("greeter")

require("colorscheme")
```

## Plugins

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
- vim-gitgutter

Not necessary, but recommended:
- mini.icons
- nvim-web-devicons
- nerd font
