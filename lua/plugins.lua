return {
    { -- just the style plugin
        'AlexvZyl/nordic.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('nordic').setup({
                italic_comments = true,
                bold_keywords = false,
                transparent = { bg = false, float = false },
                cursorline = { bold = false, bold_number = true, theme = 'dark', blend = 0.85 },
                -- add any other settings you like
            })
            require('nordic').load()
            end,
    },
    { -- help search files
        'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { -- nested highlighting capabilities
        "nvim-treesitter/nvim-treesitter", build= ":TSUpdate"
    },
    { -- our file explorer! basic setup so far
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
          "nvim-lua/plenary.nvim",
          "MunifTanjim/nui.nvim",
          "nvim-tree/nvim-web-devicons", -- optional, but recommended
        },
        lazy = false, -- neo-tree will lazily load itself
    },
    {
        "mason-org/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            }
        }
    },
    {
        "mason-org/mason-lspconfig.nvim",
        opts = {},
        dependencies = {
            { "mason-org/mason.nvim", opts = {} },
            "neovim/nvim-lspconfig",
        },
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",  -- LSP completion source
            "hrsh7th/cmp-buffer",    -- buffer words
            "hrsh7th/cmp-path",      -- file paths
            "hrsh7th/cmp-vsnip",     -- snippet support
            "hrsh7th/vim-vsnip"      -- snippet engine
        }
    }

}

