-- layout of editor

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        -- Open Neo-tree on the left (full height)
        vim.cmd("Neotree show left")

        -- Move to main code window (right of Neo-tree)
        vim.cmd("wincmd l")

        -- Split a terminal *below* the current window (code window)
        -- vim.cmd("belowright split term://$SHELL")

        -- Resize terminal height (tweak as you like)
        --vim.cmd("resize 12")
        --vim.cmd("terminal")
        -- Return focus to top-right (code) window
        --vim.cmd("startinsert")
        vim.cmd("wincmd h")
    end,
})

