local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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

-- indent all selected lines left or right
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

-- Telescope and file tree
vim.keymap.set('n', "<leader>ff", ":Telescope find_files<CR>", { desc = 'Telescope find files' })
vim.keymap.set('n', "<leader>fg", ":Telescope live_grep<CR>", { desc = 'Telescope live grep' })
vim.keymap.set('n', "<leader>fb", ":Telescope buffers<CR>", { desc = 'Telescope buffers' })
vim.keymap.set('n', "<leader>fh", ":Telescope help_tags<CR>", { desc = 'Telescope help tags' })
keymap("n", '<leader>ft', ":NvimTreeToggle <CR>", { desc = 'File tree in sidebar'})
