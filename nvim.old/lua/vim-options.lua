vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
--cursor position
vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr-o:hor20" -- Adjust as needed
-- Overriding file error
vim.opt.swapfile = false;

-- indenting
vim.opt.autoindent = true
vim.opt.smartindent = true
