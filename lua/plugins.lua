-- single file for all plugin installs
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
    { -- tool dependency installer, such as LSPs, DAPs, Linters
        "mason-org/mason.nvim",
        opts = {}
    }
}

