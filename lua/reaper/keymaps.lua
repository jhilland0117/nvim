-- standard options
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

vim.g.mapleader = " "
vim.env.HTTP_PROXY = "http://192.168.0.30:3128"
vim.env.HTTPS_PROXy = "https://192.168.0.30:3128"
vim.env.NPM_CONFIG_STRICT_SSL = "false"


-- find files using telescope
local builtin = require("telescope.builtin")

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

-- setup treesitter highlighting
local config = require("nvim-treesitter.configs")
config.setup({
	ensure_installed = { "c", "markdown", "java", "python", "lua", "javascript" },
	highlight = { enable = true },
	indent = { enable = true },
})

-- neotree (file explorer key mappings)
-- Easier window navigation, ctrl + directional
vim.keymap.set("n", "H", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "J", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "K", "<C-w>k", { noremap = true, silent = true })
vim.keymap.set("n", "L", "<C-w>l", { noremap = true, silent = true })

-- spam indenting
vim.keymap.set("v", "<", "<gv", { noremap = true, silent = true })
vim.keymap.set("v", ">", ">gv", { noremap = true, silent = true })

-- save all and leave buffer
vim.keymap.set("n", "<leader>wq", function()
    -- Save all writable buffers, silently
    pcall(function()
        vim.cmd("silent! wall")
    end)

    -- Then quit all windows, even if some buffers weren't writable
    vim.cmd("qa!")
end, { noremap = true, silent = true, desc = "Save all and quit safely" })

-- Make Shift+W save the current file
vim.keymap.set("n", "W", "<cmd>w<CR>", { noremap = true, silent = true, desc = "Save file" })

-- adding file or directory
-- file: in neotree just type 'a' and name file
-- directory: same as above but end with '/'

-- Show diagnostics
vim.keymap.set(
	"n",
	"<leader>d",
	vim.diagnostic.open_float,
	{ noremap = true, silent = true, desc = "Show diagnostics" }
)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { noremap = true, silent = true, desc = "Previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { noremap = true, silent = true, desc = "Next diagnostic" })

-- Code actions
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true, silent = true, desc = "LSP code action" })

-- buffer commands
vim.keymap.set("n", "<Tab>", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>cb", ":bd<CR>", { desc = "Close buffer" })

-- Split window management
vim.keymap.set("n", "<leader>sv", ":vsplit<CR>", { noremap = true, silent = true, desc = "Vertical split" })
vim.keymap.set("n", "<leader>sh", ":split<CR>", { noremap = true, silent = true, desc = "Horizontal split" })
vim.keymap.set("n", "<leader>sc", ":close<CR>", { noremap = true, silent = true, desc = "Close current split" })

-- Format code
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { noremap = true, silent = true, desc = "Format buffer" })
vim.keymap.set("v", "<leader>f", vim.lsp.buf.format, { noremap = true, silent = true, desc = "Format selection" })

-- Yank to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y", { noremap = true, silent = true, desc = "Yank to clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { noremap = true, silent = true, desc = "Yank to clipboard" })
-- Paste from clipboard
vim.keymap.set("n", "<leader>p", "\"+p", { noremap = true, silent = true, desc = "Paste from clipboard" })
vim.keymap.set("v", "<leader>p", "\"+p", { noremap = true, silent = true, desc = "Paste from clipboard" })

-- exit terminal mode
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true, silent = true, desc = "Exit terminal mode" })

