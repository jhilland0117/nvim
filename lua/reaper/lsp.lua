
-- python lsp server
vim.lsp.config("pyright", {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = { ".git", "pyproject.toml", "setup.cfg", "setup.py" },

  settings = {
    python = {
      analysis = {
        typeCheckingMode = "basic", -- or "strict"
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "openFilesOnly",
      },
    },
  },

  on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, silent = true }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  end,
})

-- lua_ls lsp
vim.lsp.config("lua_ls", {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = {
    '.luarc.json',
    '.luarc.jsonc',
    '.luacheckrc',
    '.stylua.toml',
    'stylua.toml',
    'selene.toml',
    'selene.yml',
    '.git',
  },
})

-- Enable it (you can also do this in an autocmd)
vim.lsp.enable("pyright")
vim.lsp.enable("lua_ls")


