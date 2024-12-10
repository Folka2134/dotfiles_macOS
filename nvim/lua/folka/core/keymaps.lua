-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
-- -------------------

-- Functionality
-- Set leader - w - d to :q (maybe :wq)
keymap.set("n", "<leader>w", ":q<CR>", { desc = "Set quit window " })
keymap.set("n", "<leader>s", ":w<CR>", { desc = "Set save file" })
keymap.set("n", "<leader>f", "/", { desc = "Search for word in current file" })
keymap.set("n", "/", ":nohlsearch<CR>", { desc = "Clear word search" })
keymap.set("n", "<CR>", "a<CR><Esc>", { desc = "Add a new line below without entering Insert mode" })
keymap.set("n", "<BS>", "a<BS><Esc>", { desc = "Add a new line above without entering Insert mode" })

-- use jk to exit modes
-- keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
-- keymap.set("v", "jk", "<ESC>", { desc = "Exit visual mode with jk" })
keymap.set("i", "<leader><CR>", "<ESC>", { desc = "Exit insert mode with Space-Enter" })
keymap.set("v", "<leader><CR>", "<ESC>", { desc = "Exit insert mode with Space-Enter" })
keymap.set("n", "<leader><CR>", "<ESC>", { desc = "Exit insert mode with Space-Enter" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

keymap.set("n", "x", '"_x', { desc = "delete single character without copying into register" })
keymap.set("n", "X", '"_X', { desc = "delete single character without copying into register" })
keymap.set("n", "d", '"_d', { desc = "delete without copying into register" })
keymap.set("n", "dd", '"_dd', { desc = "delete line character without copying into register" })

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
-- keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
-- keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
-- keymap.set("n", "<leader>w=", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
-- keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>t", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
-- keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader><Tab>", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader><S-Tab>", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
-- keymap.set("n", "<leader>f", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- movement
-- keymap.set("i", "<C-h>", "<Left>", { desc = "Move Cursor left in insert mode" }) --  move cursor left in insert mode
-- keymap.set("i", "<C-l>", "<Right>", { desc = "Move Cursor right in insert mode" }) --  move cursor right in insert mode
keymap.set("n", "<leader>j", "<C-d>zz", { desc = "Jump down and centre" }) --  jump and centre
keymap.set("n", "<leader>k", "<C-u>zz", { desc = "Jump up and centre" }) --  jump and centre
keymap.set("n", "G", "Gzz", { desc = "Jump to bottom and centre" }) --  jump and centre

-- unbound
-- if vim.fn.mapcheck("<leader>sm", "n") ~= "" then
--     vim.api.nvim_del_keymap("n", "<leader>sm")
-- else
--     print("No such mapping exists: <leader>sm")
-- end
-- vim.keymap.del("n", "<leader>ft")
-- keymap.del({'n', 'i', 'v'}, '<leader>sm', { buffer = 5 })
-- keymap.del('n', '<leader>sm', { buffer = 5 })
-- vim.keymap.del("n", "<leader>sm")
