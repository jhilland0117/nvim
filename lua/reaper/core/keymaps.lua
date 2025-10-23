-- local variable for options set, no recursive mapping
local opts = { noremap = true, silent = true }

-- "n" normal mode: default mode, run commands and move around
-- "v" visual mode: for selecting text
-- "i" insert mode: for inserting text
-- "x" visual selection mode: like "v" but acts on selections
-- "s" select mode: similar to visual but behaves more like text selection in editors
-- "c" command line mode: when typing after :, /, ?
-- "o" operator-pending mode: when waiting for a motion after a command like d, y, c
-- "t" terminal mode: when you are inside an embedded terminal buffer
-- "!" insert + command line: applies to both insert and command line modes


-- global and local leader key, act as prefixes for custom shortcuts
vim.g.mapleader = " "
vim.g.maplocalleader = " " 

-- highlight text and move it up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" }) 
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })


-- join lines but keep cursor where it belongs (J, move lines up, cursor stays)
vim.keymap.set("n", "J", "mzJ`z")

-- not sure just yet on what these do
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" })

-- n for next in search, zz recenters cursor line in middle, zv opens any folds if search match happens
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")


-- spam indenting multiple lines
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- selected text mode, _ black hole register, d delet selected text, P paste before cursor position
-- when you paste over a selection with leader-p it replaces the text without changing what you last yanked
vim.keymap.set("x", "<leader>p", [["_dP]])

-- remember yanked
vim.keymap.set("v", "p", '"_dp', opts)


