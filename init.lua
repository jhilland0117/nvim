
-- configure lazyvim, install it if not already
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- include appropriate files, packages, opts
require("lazy").setup("plugins")
require("lazy").setup("lsp")
require("reaper.keymaps")
require("reaper.options")
require("reaper.layout")

vim.env.HTTP_PROXY = "http://192.168.0.30:3128"
vim.env.HTTPS_PROXy = "https://192.168.0.30:3128"
vim.env.NPM_CONFIG_STRICT_SSL = "false"

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "lua_ls" },
    automatic_enable = true,
})

local cmp = require("cmp")
cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = {
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
    },
})

