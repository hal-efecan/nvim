-- Set leader first
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Define opts once (for mappings that need it)
local opts = { noremap = true, silent = true }

-- Disable space in normal mode (optional)
vim.keymap.set('n', '<Space>', '<Nop>', opts)

-- Window navigation
vim.keymap.set('n', '<C-k>', '<cmd>wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', '<cmd>wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', '<cmd>wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', '<cmd>wincmd l<CR>', opts)

-- Clear search highlights
vim.keymap.set('n', '<leader>h', '<cmd>nohlsearch<CR>', opts)

-- Telescope
-- vim.keymap.set('n', '<leader><leader>', '<cmd>Telescope find_files<CR>', opts)

-- Update your keymap for Telescope find_files
vim.keymap.set('n', '<leader><leader>', function()
    require('telescope.builtin').find_files({
      file_ignore_patterns = {"node_modules", ".git", "dist"}  -- add other directories you want to ignore here
    })
  end, { noremap = true, silent = true })
  

-- Packer
vim.keymap.set('n', 'pu', '<cmd>PackerSync<CR>', opts)

-- Indentation in visual mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Move text up and down in N&V modes
vim.keymap.set("n", "J", ":m .+1<CR>==", opts)
vim.keymap.set("n", "K", ":m .-2<CR>==", opts)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Keeps the copied world in the registry
vim.keymap.set("v", "p", '"_dP', opts)

-- windows
vim.keymap.set('n', 'vv', ':vsplit', opts)