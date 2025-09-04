local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap
local unmap = vim.api.nvim_del_keymap

-- Remove search highlight
keymap("n", "<ESC>", ":nohls<CR>", { desc = 'Remove highlight from search' })

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- H, L -> jump to start/end of line 
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)
keymap("v", "H", "^", opts)
keymap("v", "L", "$", opts)

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
keymap("v", "<leader>y", '"+y', { desc = 'Copy selection to system clipboard' }) -- visual mode
keymap("n", "<leader>y", '"+y', { desc = 'Copy selection to system clipboard' }) -- normal mode
keymap("n", "<leader>Y", '"+Y', { desc = 'Copy line to system clipboard' }) -- quick grab line normal mode

-- Indent all selected lines left or right
keymap("v", ">", ">gv", opts) -- Left Indentation
keymap("v", "<", "<gv", opts) -- Right Indentation

-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Access command line
keymap("n", "<leader>!", ":! ", { desc = 'Enter command' })
keymap("n", "<leader>:", ":r! ", { desc = 'Print command output into buffer' })

-- Insert date and time info
keymap("n", "<leader>d", "", { desc = 'Insert date/time at end of line' })
keymap("n", "<leader>di", ":r! date -I <CR> kJ", {desc = '`date -I` (ISO 8601 format) YYYY-MM-DD' })
keymap("n", "<leader>dr", ":r! date -R <CR> kJ", {desc = '`date -R` (RFC 5322 format) Day, DD Month YYYY HH:MM:SS timezone' })

-- Insert file paths 
keymap("n", "<leader>l", "", { desc = 'Insert file paths' })
keymap("n", "<leader>ll", ":r! ls -1 <CR>", { desc = '`ls -1 .`' })
keymap("n", "<leader>lf", ":r! find ", { desc = 'Find in other directory' })

-- Telescope and file tree
keymap("n", "<leader>f", "", { desc = 'Telescope and file tree' })
keymap("n", "<leader>ff", ":Telescope find_files<CR>", { desc = 'Telescope find files' })
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", { desc = 'Telescope live grep' })
keymap("n", "<leader>fh", ":Telescope help_tags<CR>", { desc = 'Telescope help tags' })

-- Git
keymap("n", "<leader>g", "", { desc = 'Git'})
keymap("n", "<leader>gs", ":G status <CR>", { desc = 'Git status'})
keymap("n", "<leader>ga", ":G add % <CR>", { desc = 'Git add current file'})
keymap("n", "<leader>gc", ":G commit <CR>", { desc = 'Git commit'})
keymap("n", "<leader>gp", ":G push <CR>", { desc = 'Git push'})

-- Undo tree
keymap("n", "<leader>u", ":lua require('undotree').toggle() <CR>", { desc = 'Undo tree toggle'})

-- Buffer management
keymap("n", "<leader>b", "", { desc = 'Buffer management'})
keymap("n", "<leader>bp", ":bp <CR>", { desc = 'Previous buffer'})
keymap("n", "<leader>bn", ":bn <CR>", { desc = 'Next buffer'})
keymap("n", "<leader>bl", ":buffers <CR>", { desc = 'List all buffers'})
keymap("n", "<leader>bb", ":Telescope buffers <CR>", { desc = 'Search all buffers'})
keymap("n", "<leader>bd", ":bd <CR>", { desc = 'Close current buffer'})

-- :make and quickfix
keymap("n", "<leader>mk", ":make <CR>", { desc = ':make'})
keymap("n", "<leader>mo", ":copen <CR>", { desc = 'Open quickfix'})
keymap("n", "<leader>mc", ":cclose <CR>", { desc = 'Close quickfix'})
keymap("n", "<leader>mn", ":cnext <CR>", { desc = 'Next quickfix'})
keymap("n", "<leader>mp", ":cprev <CR>", { desc = 'Previous quickfix'})

-- diagnostics (overwrote <leader>d)
keymap("n", "<leader>h", ":lua vim.diagnostic.open_float() <CR>", { desc = 'LSP Diagnostic'})
