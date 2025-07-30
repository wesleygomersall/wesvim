local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)

-- Use ctrl-[hjkl] to select the active split
keymap("n", "<C-h>", "<C-w>h", opts) -- left window
keymap("n", "<C-k>", "<C-w>k", opts) -- up window
keymap("n", "<C-j>", "<C-w>j", opts) -- down window
keymap("n", "<C-l>", "<C-w>l", opts) -- right window

-- Resize windows with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<c-down>", ":resize +2<cr>", opts)
keymap("n", "<c-right>", ":vertical resize -2<cr>", opts)
keymap("n", "<c-left>", ":vertical resize +2<cr>", opts)

-- copy selection to system clipboard
keymap("v", "<leader>y", '"+y', opts) -- visual mode
keymap("n", "<leader>y", '"+y', opts) -- normal mode
keymap("n", "<leader>Y", '"+Y', opts) -- quick grab line normal mode

-- Indent all selected lines left or right
keymap("v", ">", ">gv", opts) -- Left Indentation
keymap("v", "<", "<gv", opts) -- Right Indentation

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

--Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

--Access command line
keymap("n", "<leader>!", ":! ", { desc = 'Enter command' })
keymap("n", "<leader>:", ":r! ", { desc = 'Print command output into buffer' })

-- Telescope and file tree
keymap("n", "<leader>ff", ":Telescope find_files<CR>", { desc = 'Telescope find files' })
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = 'Telescope live grep' })
keymap("n", "<leader>fb", ":Telescope buffers<CR>", { desc = 'Telescope buffers' })
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = 'Telescope help tags' })
keymap("n", "<leader>ft", ":NvimTreeToggle <CR>", { desc = 'File tree in sidebar'})

-- Git
keymap("n", "<leader>gs", ":G status <CR>", { desc = 'Git status'})
keymap("n", "<leader>ga", ":G add % <CR>", { desc = 'Git add current file'})
keymap("n", "<leader>gc", ":G commit <CR>", { desc = 'Git commit'})
keymap("n", "<leader>gp", ":G push <CR>", { desc = 'Git push'})

-- Undo tree
keymap("n", "<leader>u", ":lua require('undotree').toggle() <CR>", { desc = 'Undo tree toggle'})

-- Buffer switching
keymap("n", "<leader>bp", ":bp <CR>", { desc = 'Previous buffer'})
keymap("n", "<leader>bn", ":bn <CR>", { desc = 'Next buffer'})
keymap("n", "<leader>bl", ":buffers <CR>", { desc = 'List all buffers'})
keymap("n", "<leader>bb", ":Telescope buffers <CR>", { desc = 'Search all buffers'})
