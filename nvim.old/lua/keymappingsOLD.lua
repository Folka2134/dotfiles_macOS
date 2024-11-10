-- ---- Modes
-- -- Normal Mode: Ctrl + O -> Esc
-- vim.keymap.set({ "v", "i", "x" }, "`", "<Esc>", { noremap = true })            -- normal modekeym
-- -- Insert Mode: Ctrl + K -> i
vim.keymap.set({ "n", "v", "x" }, "<C-space>", "i<Right>", { noremap = true }) -- insert mode
-- vim.keymap.set({ "n", "v", "x" }, "<Enter>", "i<Right>", { noremap = true })   -- insert mode
vim.keymap.set({ "i", "v", "x" }, "<C-space>", "<Esc>", { noremap = true })    -- insert mode
-- vim.keymap.set({ "v", "x" }, "<Enter>", "<Esc>i<Right>", { noremap = true })   -- insert mode
-- vim.keymap.set({ "v", "x" }, "<C-Enter>", "<Esc>i<Right>", { noremap = true })   -- insert mode
-- -- Visual Mode: Ctrl + I -> v
-- vim.keymap.set({ "n", "i" }, "<C-v>", "v", { noremap = true }) 
-- -- visual mode
--
-- ---- Windows
-- New Tab
vim.keymap.set({ "n", "v", "x" }, "<C-t>", ":tabnew<CR>", { noremap = true, silent = true })     -- ctrl t
vim.keymap.set("i", "<C-t>", "<Esc>:tabnew<CR>", { noremap = true, silent = true })              -- ctrl t
-- -- Close Tab
vim.keymap.set({ "n", "v", "x" }, "<C-w>", ":tabclose<CR>", { noremap = true, silent = true }) -- ctrl
vim.keymap.set("i", "<C-w>", "<Esc>:tabclose<CR>", { noremap = true, silent = true })          -- ctrl w
-- -- Next Tab
vim.keymap.set({ "n", "v", "x" }, "<C-Tab>", "gt", { noremap = true })                           -- ctrl tab
-- vim.keymap.set("i", "<C-Tab>", "<Esc>gt", { noremap = true })                                    -- ctrl tab
-- -- Previous Tab
vim.keymap.set({ "n", "v", "x" }, "<C-S-Tab>", "gT", { noremap = true })                         -- ctrl shift tab
-- vim.keymap.set("i", "<C-S-Tab>", "gT", { noremap = true })                                       -- ctrl shift tab
--
-- ---- Movement
-- -- Move Left
vim.keymap.set({ "n", "v", "x" }, "j", "h", { noremap = true })        -- l -> h
--vim.keymap.set("i", "<C-j>", "<Esc>hi<Right>", { noremap = true })     -- l -> h
-- -- Move Right
-- vim.keymap.set({ "n", "v", "x" }, "'", "l", { noremap = true })        -- ' -> l
--vim.keymap.set("i", "<C-l>", "<Esc>li<Right>", { noremap = true })     -- ' -> l
-- -- Move Up
vim.keymap.set({ "n", "v", "x" }, "i", "k", { noremap = true })        -- p -> k
vim.keymap.set({ "n", "v", "x" }, "<C-i>", "4k", { noremap = true })   -- p -> k
--vim.keymap.set("i", "<C-i>", "<Esc>ki<Right>", { noremap = true })     -- p -> k      FIX
-- -- Move Down
vim.keymap.set({ "n", "v", "x" }, "k", "j", { noremap = true })        -- ; -> j
vim.keymap.set({ "n", "v", "x" }, "<C-k>", "4j", { noremap = true })   -- ; -> j
--vim.keymap.set("i", "<C-k>", "<Esc>ji<Right>", { noremap = true })     -- ; -> j
-- -- Word Start
vim.keymap.set({ "n", "v", "x" }, "<C-j>", "b", { noremap = true })    -- ctrl l -> b
vim.keymap.set("v", "<C-l>", "b", { noremap = true })             -- ctrl l -> b
-- -- Word End
vim.keymap.set({ "n", "v", "x" }, "<C-l>", "e", { noremap = true })    -- ctrl ' ->
vim.keymap.set("v", "<C-'>", "e", { noremap = true })             -- ctrl ' ->
-- -- Move Line Up
vim.keymap.set({ "n", "v", "x" }, "<D-C-i>", ":m -2<CR>", { noremap = true }) -- alt p -> K
-- -- Move Line Down
vim.keymap.set({ "n", "v", "x" }, "<D-C-k>", ":m +1<CR>", { noremap = true })  -- alt ; -> J
-- -- Move End Line Right
vim.keymap.set({ "n", "v", "x" }, "<D-C-l>", "$", { noremap = true })  -- l -> h
-- -- Move Start Line Right
vim.keymap.set({ "n", "v", "x" }, "<D-C-j>", "0", { noremap = true })  -- l -> h
--
-- ---- Select
-- -- Select all
vim.keymap.set({ "n", "v", "x" }, "<C-a>", "ggVG", { noremap = true }) -- ctrl a
-- vim.keymap.set('i', '<C-a>', '<Esc>ggVG', { noremap = true })  -- ctrl a
-- -- Cancel selected Directions
vim.keymap.set({ "v", "x" }, "j", "<Esc>h", { noremap = true })
vim.keymap.set({ "v", "x" }, "i", "<Esc>k", { noremap = true })
vim.keymap.set({ "v", "x" }, "l", "<Esc>l", { noremap = true })
vim.keymap.set({ "v", "x" }, "k", "<Esc>j", { noremap = true })
-- -- Select Word Left
vim.keymap.set("n", "<C-S-j>", "vb", { noremap = true })         -- ctrl shift l -> vb
vim.keymap.set("n", "<S-j>", "vh", { noremap = true })           -- ctrl shift l -> vb
vim.keymap.set({ "v", "x" }, "<C-S-j>", "b", { noremap = true }) -- ctrl shift l -> vb
vim.keymap.set({ "v", "x" }, "<S-j>", "h", { noremap = true })   -- ctrl shift l -> vb
--vim.keymap.set("i", "<C-S-j>", "<Esc>vb", { noremap = true })    -- ctrl shift l -> vb
--vim.keymap.set('i', '<S-l>', '<Esc>vh', { noremap = true })  -- ctrl shift l -> vb
-- -- Select Word Right
vim.keymap.set("n", '<C-S-l>', "ve", { noremap = true })         -- ctrl shift l -> vb
vim.keymap.set("n", '<S-l>', "vl", { noremap = true })               -- ctrl shift l -> vb
vim.keymap.set({ "v", "x" }, '<C-S-l>', "e", { noremap = true }) -- ctrl shift ' -> vw
vim.keymap.set({ "v", "x" }, '<S-l>', "l", { noremap = true })       -- ctrl shift ' -> vw
--vim.keymap.set("i", '<C-S-l>', "<Esc>lve", { noremap = true })   -- ctrl shift l -> vb
--vim.keymap.set('i', '<S-l>', '<Esc>vl', { noremap = true })  -- ctrl shift l -> vb
-- -- Select Line Start Up
vim.keymap.set("n", "<S-i>", "vk0", { noremap = true })             -- ctrl shift p -> Vk0
vim.keymap.set({ "v", "x" }, "<S-i>", "k", { noremap = true })      -- ctrl shift p -> Vk0
-- vim.keymap.set("n", "<C-S-p>", "v4k0", { noremap = true })          -- ctrl shift p -> Vk0
-- vim.keymap.set({ "v", "x" }, "<C-S-p>", "4k0", { noremap = true })  -- ctrl shift p -> Vk0
-- -- Select Line End Down
vim.keymap.set("n", "<S-k>", "Vj0", { noremap = true })                 -- ctrl shift ; -> Vj0
vim.keymap.set({ "v", "x" }, "<S-k>", "j$", { noremap = true })         -- ctrl shift ; -> Vj0
-- vim.keymap.set("n", "<C-S-:>", "v4j0", { noremap = true })          -- ctrl shift ; -> Vj0
-- vim.keymap.set({ "v", "x" }, "<C-S-:>", "4j$", { noremap = true })  -- ctrl shift ; -> Vj0
-- -- Select End Line Right
vim.keymap.set({ "n", "x" }, '<D-C-S-l>', "v$", { noremap = true }) -- l -> h
-- -- Select Start Line Right
vim.keymap.set({ "n", "x" }, "<D-C-S-j>", "v0", { noremap = true }) -- l -> h
-- -- Delete selected
vim.keymap.set({ "v", "x" }, "<BS>", "x", { noremap = true })
--
-- ---- Actions
-- -- copy
vim.keymap.set({ "n", "v", "x" }, "<C-c>", "y", { noremap = true }) -- ctrl c
-- -- copy to clipboard's
vim.keymap.set({ "n", "v", "x" }, "<C-S-c>", '"+y', { noremap = true })
-- -- cut
vim.keymap.set({ "n", "v", "x" }, "<C-x>", "d", { noremap = true })      -- ctrl x
-- -- paste
vim.keymap.set({ "n", "v", "x" }, "<C-v>", "p", { noremap = true })      -- ctrl v
vim.keymap.set("i", "<C-v>", "<Esc>pi", { noremap = true })              -- ctrl v
-- -- undo
vim.keymap.set({ "n", "v", "x" }, "<C-z>", "u", { noremap = true })      -- ctrl z
vim.keymap.set("i", "<C-z>", "<Esc>ui", { noremap = true })              -- ctrl z
-- -- redo
vim.keymap.set({ "n", "v", "x" }, "<C-y>", "<C-r>", { noremap = true })  -- ctrl y
vim.keymap.set("i", "<C-y>", "<Esc><C-ri>", { noremap = true })          -- ctrl y
-- -- Delete Line
vim.keymap.set({ "n", "v", "x" }, "<C-d>", "dd", { noremap = true })  -- ctrl backspace -> dd
vim.keymap.set("i", "<C-d>", "<Esc>dd", { noremap = true })           -- ctrl backspace -> dd
-- -- Duplicate Line
vim.keymap.set({ "n", "v", "x" }, "<C-S-d>", "yyp", { noremap = true })  -- ctrl shift d -> yyp
vim.keymap.set("i", "<C-S-d>", "<Esc>yypi", { noremap = true })          -- ctrl shift d -> yyp
-- -- Find/Search Word
vim.keymap.set({ "n", "v", "x" }, "<C-f>", "/", { noremap = true })      -- ctrl f -> /
-- -- Go to next Found Word
vim.keymap.set({ "n", "v", "x" }, "<Enter>", "n", { noremap = true })      -- ctrl f -> /
-- -- Go to prev Found Word
vim.keymap.set({ "n", "v", "x" }, "<C-Enter>", "N", { noremap = true })      -- ctrl f -> /
-- -- Find Select Match
-- vim.keymap.set({ "n", "v", "x" }, "<C-d>", "viw", { noremap = true })    -- ctrl d -> viw
-- -- Save
vim.keymap.set({ "n", "v", "x" }, "<C-s>", ":w<CR>", { noremap = true }) -- ctrl d -> viw
vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>", { noremap = true })          -- ctrl d -> viw
-- -- Quit
vim.keymap.set({ "n", "v", "x" }, "<C-S-w>", ":wqa<CR>", { noremap = true })
vim.keymap.set('i', '<C-w>', '<Esc>:wqa<CR>', { noremap = true })
-- -- Should be a plugin?
-- -- Save and format
-- vim.keymap.set({ "n", "v", "x" }, "<C-w>", ":wqa<CR>gg=G", { noremap = true })
-- -- Comment
-- --vim.keymap.set({ "n", "v", "x" }, "<C-/>", "I--<Esc>", { noremap = true })
vim.keymap.set({ "n", "v", "x" }, "<C-/>", "gcc", { noremap = true })

-- vim.keymap.set("i", "<C-/>", "<Esc>ggci", { noremap = true })
-- -- Command
-- vim.keymap.set({"n", "v", "x"}, "<C-/>", ":", { noremap = true })
-- -- Delete next character
vim.keymap.set("i", "<C-BS>", "<Esc>lxi", { noremap = true })
-- -- Delete word
-- --vim.keymap.set('i', '<C-BS>', '<Esc>db', { noremap = true })
--
-- -- Redundent overlap
-- --vim.keymap.set({''})
-- -- Unbound keys
--vim.keymap.set("n", "o", { noremap = true })
--vim.keymap.set("n", "n", { noremap = true })
--vim.keymap.set("n", "N", { noremap = true })
--vim.keymap.set("n", "<Enter>", { noremap = true })


