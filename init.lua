require("config.lazy")
local global = vim.g
local opt = vim.o

-- EDITOR SETTINGS -- 
opt.number = true -- print the line number in front of each line
opt.relativenumber = true -- show the line number relative to current line on other lines
opt.clipboard = "unnamedplus" -- uses the clipboard register for all operations except yank.
opt.syntax = "on" -- ??: when this option is set, the syntax with this name is loaded.
opt.autoindent = true
opt.cursorline = true
opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
opt.shiftwidth = 4 -- Number of spaces inserted when indenting
opt.tabstop = 4 -- A TAB character looks like 4 spaces
opt.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
opt.ruler = true -- show line and column number of cursor position
opt.title = true -- set title of window to the value of 'titlestring'
opt.hidden = true -- ??: when on a buffer becomes hidden when it is abandoned
opt.ttimeoutlen = 0 -- length in ms that is waited for a key code or mapped key sequence to complete
opt.wildmenu = true -- ??: command-line completion operates in an enhanced mode.
opt.showcmd = true -- show (partial) command in the last line of the screen.
opt.inccommand = "split" --??: when nonempty, shows the effects of :substitute, :smagic, and :snomagic and user commands with the :command-preview flag as you type
opt.splitright = true
opt.splitbelow = true
opt.termguicolors = true


-- kEYBINDINGS -- 
global.mapleader = " "
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>c", ":bd<CR>")
vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
vim.keymap.set("n", "<leader>bp", ":bprev<CR>")

-- require'lspconfig'.pyright.setup{}
-- require'lspconfig'.ruff.setup{}
-- require'lspconfig'.pylint.setup{}

vim.keymap.set("n", "<leader>lj", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>lp", vim.diagnostic.goto_next)
