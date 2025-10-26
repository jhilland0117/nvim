-- standard options
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " "

-- find files using telescope
local builtin = require('telescope.builtin')

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- setup treesitter highlighting
local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = {"c", "markdown", "java", "python", "lua", "javascript"},
    highlight = { enable = true },
    indent = { enable = true }
})

-- neotree (file explorer key mappings)
-- Easier window navigation, ctrl + directional
vim.keymap.set("n", "H", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "J", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "K", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "L", "<C-w>l", { noremap = true, silent = true })


-- general keymaps
vim.keymap.set('n', "<leader>wq", "<cmd>wqall<CR>", { noremap = true, silent = true, desc = "Save and quit all" })
-- Make Shift+W save the current file
vim.keymap.set("n", "W", "<cmd>w<CR>", { noremap = true, silent = true, desc = "Save file" })


-- adding file or directory
-- file: in neotree just type 'a' and name file
-- directory: same as above but end with '/'
