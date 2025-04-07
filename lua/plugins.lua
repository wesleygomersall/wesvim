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
    },

    -- dependency for which-key
    { 'echasnovski/mini.icons', version = false },

    -- file sidebar
    {
        'nvim-tree/nvim-tree.lua',
        lazy = true,
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
    },

    -- Colorscheme
    { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },

    -- Bufferline
    {
        'akinsho/bufferline.nvim',
        dependencies = 'nvim-tree/nvim-web-devicons'
    },

    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    { 'akinsho/toggleterm.nvim',   version = "*",    config = true },

    -- Start-up screen
    {
        'goolord/alpha-nvim',
        config = function()
            require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
        end
    },

    -- Undo-Tree
    {
        "jiaoshijie/undotree",
        dependencies = "nvim-lua/plenary.nvim",
        config = true,
        keys = { -- load the plugin only when using it's keybinding:
            { "<leader>u", "<cmd>lua require('undotree').toggle()<cr>" },
        },
    },

    -- LSP
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },

        }
    },

    -- Auto Pairs
    {
        "windwp/nvim-autopairs"
    },

    -- treesitter
    {
        "nvim-treesitter/nvim-treesitter",
    },

    -- Git Integration
    {
        "airblade/vim-gitgutter",
        "tpope/vim-fugitive"
    },
}
