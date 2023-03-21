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

vim.opt.updatetime = 500

vim.opt.colorcolumn = "81,101"
vim.api.nvim_set_hl(0,'ColorColumn',{ bg='#000000' })

vim.opt.cursorline = true
vim.api.nvim_set_hl(0,'CursorLine',{ bg='#2f2f2f' })

-- vim.cmd.colorscheme("habamax")
-- vim.api.nvim_set_hl(0, "Normal", { bg = "#000000" })
-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000" })


vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
