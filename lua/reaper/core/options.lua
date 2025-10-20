vim.cmd("let g:netrw_banner = 0")

-- boolean: print the lin number in front of each line
vim.opt.nu = true

-- string: configures the cursor style for each mode
vim.opt.guicursor = ""

-- boolean: show the line number relative to the line with cursro
vim.opt.relativenumber = false

-- number: defines the collum multiple used to display horizontal tab
vim.opt.tabstop = 4

-- number: create soft tab stops
vim.opt.softtabstop = 4

-- number: of collumns that make up one level of indentation
vim.opt.shiftwidth = 4

-- boolean: insert mode, use appropriate number of spaces to insert
vim.opt.expandtab = true

-- boolean: copy indent from current line when starting new line
vim.opt.autoindent = true

-- boolean: do smart indenting when starting new line
vim.opt.smartindent = true

-- boolean: changes how text is displayed, not changed in buffer
vim.opt.wrap = false

-- boolean: use swapfile for buffer
vim.opt.swapfile = false

-- boolean: make backup before ovewriting a file
vim.opt.backup = false

-- boolean: vim auto saves undo history to an undno file when writing
vim.opt.undofile = true

-- incremental search
-- boolean: when typing search, show where pattern matches
vim.opt.incsearch = true

-- string: shows effects of, partial off-screen results in preview window
vim.opt.inccommand = "split"

-- boolean: ignore case in search patterns
vim.opt.ignorecase = true

-- boolean: override ignorecase option if search pattern contains upper
vim.opt.smartcase = true

-- boolean: enables 24-bit RGB color in the TUI
vim.opt.termguicolors = true

-- string: adjusts the default color groups for the background type
vim.opt.background = "dark"

-- number: min number of screen lines to keep above and below cursor
vim.opt.scrolloff = 8

-- string: local to window, when and how to draw the signcolumn
vim.opt.signcolumn = "yes"

-- string: list of items that allows a way to backspace over something
vim.opt.backspace = { "start", "eol", "indent" }

-- boolean: splitting a window will put new window right of the current one
vim.opt.splitright = true

-- boolean: splitting a window will put new window below current
vim.opt.splitbelow = true

-- most uncommon file names show up
vim.opt.isfname:append("@-@")

-- update date for curse hold events and LSP
vim.opt.updatetime = 50

--
vim.opt.colorcolumn = "130"

-- copy between neovim and other apps
vim.opt.clipboard:append("unnamedplus")

-- highlight text in search
vim.opt.hlsearch = true

-- enable mouse supports in all modes
vim.opt.mouse = "a"

vim.g.editorconfig = true

