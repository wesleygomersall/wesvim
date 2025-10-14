return {
    -- Plugins will be added here accordingly.

    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
        dependencies = {'echasnovski/mini.icons', version = false},
    },

    -- Colorscheme
    {"bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000},

    -- Bufferline
    {'akinsho/bufferline.nvim',
     dependencies = 'nvim-tree/nvim-web-devicons'
    },

    {'nvim-telescope/telescope.nvim',
     tag = '0.1.8',
     dependencies = { 'nvim-lua/plenary.nvim' }
    },

    {'benfowler/telescope-luasnip.nvim',
     module = "telescope._extensions.luasnip",  -- if you wish to lazy-load
    },

    -- terminal
    {'akinsho/toggleterm.nvim',   version = "*",    config = true },

    -- Start-up screen
    {'goolord/alpha-nvim',
     config = function()
         require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
     end
    },

    -- Undo-Tree
    {"jiaoshijie/undotree",
     dependencies = "nvim-lua/plenary.nvim",
     config = true,
    },

    -- LSP
    -- {
        -- 'VonHeikemen/lsp-zero.nvim',
        -- branch = 'v1.x',
        -- dependencies = {
            -- -- LSP Support
            -- { 'neovim/nvim-lspconfig' },
            -- { 'williamboman/mason.nvim' },
            -- { 'williamboman/mason-lspconfig.nvim' },

            -- -- Autocompletion
            -- { 'hrsh7th/nvim-cmp' },
            -- { 'hrsh7th/cmp-nvim-lsp' },
        -- }
    -- },

    -- Auto Pairs for parantheses and quotes
    -- {"windwp/nvim-autopairs"},

    -- treesitter
    {"nvim-treesitter/nvim-treesitter"},

    -- Git Integration
    {"airblade/vim-gitgutter",
     "tpope/vim-fugitive"},

    -- typst live updates 
    {'chomosuke/typst-preview.nvim',
     lazy = false, -- or ft = 'typst'
     version = '1.*',
     opts = {}, -- lazy.nvim will implicitly calls `setup {}` 
    },

    -- Lua snippets
    {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
    -- build = "make install_jsregexp"
    config = function()
        local ls = require("luasnip")

        require("luasnip").setup({ enable_autosnippets = true })
        require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/snippets/"})

        vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})
        vim.keymap.set({"i", "s"}, "<C-E>", function()
	        if ls.choice_active() then
		        ls.change_choice(1)
	        end
        end, {silent = true})
    end
    },

}
