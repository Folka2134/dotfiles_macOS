vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "light"

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Tabs
vim.keymap.set("n", "<C-t>", ":tabnew<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<C-S-T>", ":tabclose<CR>", { silent = true, noremap = true })
-- vim.keymap.set('n', '<C-Tab>', 'gt', { silent = true, noremap = true })
-- vim.keymap.set('n', '<C-S-Tab>', 'gT', { silent = true, noremap = true })

-- Actions
vim.keymap.set({ "i", "v", "x" }, "<C-c>", "<Esc>", { noremap = true }) -- Normal Mode
vim.keymap.set({ "v", "x" }, "<C-C>", '"+y', { noremap = true }) -- Copy to clipboard
vim.keymap.set('n', "<C-s>", ":w<CR>", { noremap = true }) -- Save
vim.keymap.set({'i', 'v', 'x'}, "<C-s>", "<Esc>:w<CR>", { noremap = true }) -- Save
vim.keymap.set("n", "<leader>/", ":nohlsearch<CR>") -- Clear search
