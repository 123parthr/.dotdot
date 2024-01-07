vim.opt.nu = true
-- vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 14
vim.opt.signcolumn = "yes"
vim.opt.numberwidth = 12 -- can be max 12
vim.opt.foldcolumn = "9" -- can be max 9

vim.opt.updatetime = 100

vim.cmd.colorscheme("habamax")
vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })

vim.opt.colorcolumn = "81,101"
vim.api.nvim_set_hl(0,'ColorColumn',{ bg='#000000' })

vim.opt.cursorline = true
vim.api.nvim_set_hl(0,'CursorLine',{ bg='#2e2e2e' })


vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
