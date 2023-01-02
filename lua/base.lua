vim.opt.nu = true
vim.opt.rnu = true


vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.opt.list = true
vim.opt.listchars:append('tab: ')
vim.opt.listchars:append('trail:·')
vim.opt.listchars:append('multispace:·')
