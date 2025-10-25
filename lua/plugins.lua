-- plugins.lua
return {
  -- other plugins ...
    {
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
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        "nvim-treesitter/nvim-treesitter", build= ":TSUpdate"
    },
}

