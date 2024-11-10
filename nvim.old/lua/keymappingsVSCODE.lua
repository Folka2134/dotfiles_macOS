local map     = vim.keymap
local bufopts = { silent=true }

map.set('i', '<C-A-up>'          , '<ESC>:call vm#commands#add_cursor_up(0,1)<CR>'           , bufopts)
    map.set('i', '<C-A-down>'        , '<ESC>:call vm#commands#add_cursor_down(0,1)<CR>'         , bufopts)
    map.set('v', '<Tab>'             , '>gv'                                                     , bufopts)
    map.set('v', '<S-Tab>'           , '<gv'                                                     , bufopts)
    map.set('i', '<S-Tab>'           , '<ESC>v<<ESC>i<right>'                                    , bufopts)
    map.set("i", "<C-s>"             , "<C-o>:w!<CR>"                                            , bufopts) -- On blank line stays on normal mode
    map.set("n", "<C-s>"             , ":w!<CR>"                                                 , bufopts)
    map.set("i", "<C-q>"             , '<C-o>:q!<CR>'                                            , bufopts)
    map.set("v", "<C-q>"             , ':q!<CR>'                                                 , bufopts)
    map.set('n', '<A-j>'             , ':m+<CR>=='                                               , bufopts)
    map.set('n', '<A-down>'          , ':m+<CR>=='                                               , bufopts)
    map.set('n', '<A-k>'             , ':m-2<CR>=='                                              , bufopts)
    map.set('n', '<A-up>'            , ':m-2<CR>=='                                              , bufopts)
    map.set('i', '<A-j>'             , '<Esc>:m+<CR>==gi'                                        , bufopts)
    map.set('i', '<A-down>'          , '<Esc>:m+<CR>==gi'                                        , bufopts)
    map.set('i', '<A-k>'             , '<Esc>:m-2<CR>==gi'                                       , bufopts)
    map.set('i', '<A-up>'            , '<Esc>:m-2<CR>==gi'                                       , bufopts)
    map.set('v', '<A-j>'             , ':m\'>+<CR>gv=gv'                                         , bufopts)
    map.set('v', '<A-down>'          , ':m\'>+<CR>gv=gv'                                         , bufopts)
    map.set('v', '<A-k>'             , ':m-2<CR>gv=gv'                                           , bufopts)
    map.set('v', '<A-up>'            , ':m-2<CR>gv=gv'                                           , bufopts)
    map.set('i', '<C-right>'         , '<C-o>:call jump_word_e()<CR>'                            , bufopts)
    map.set('i', '<C-left>'          , '<C-o>:call jump_word_b()<CR>'                            , bufopts)
    map.set('n', '<C-right>'         , 'e'                                                       , bufopts) -- https://vi.stackexchange.com/questions/12614/prevent-w-from-jumping-to-next-line#comment21820_12614
    map.set('n', '<C-left>'          , 'b'                                                       , bufopts)
    map.set('v', '<C-c>'             , 'ygv'                                                     , bufopts) -- https://stackoverflow.com/questions/47842041/
    map.set('i', '<C-c>'             , '<C-o>yy'                                                 , bufopts)
    map.set('v', '<C-v>'             , "\"_dgP"                                                  , bufopts)
    map.set('i', '<C-v>'             , "<C-r>=paste_check()<CR>"                                 , bufopts)
    map.set('i', '<C-Up>'            , '<C-o><C-y>'                                              , bufopts)
    map.set('i', '<C-S-Up>'          , '<C-o><C-v>k'                                             , bufopts) -- WTF HAPPENED WITH C-S-UpDown | C-v to see what key
    map.set('i', '<C-S-Down>'        , '<C-o><C-v>j'                                             , bufopts) -- WTF HAPPENED WITH C-S-UpDown | C-v to see what key
    map.set('i', '<F8>'              , '<C-o><C-v>k'                                             , bufopts) -- WTF HAPPENED WITH C-S-UpDown | C-v to see what key
    map.set('i', '<F6>'              , '<C-o><C-v>j'                                             , bufopts) -- WTF HAPPENED WITH C-S-UpDown | C-v to see what key
    map.set('i', '<A-M>'             , '<C-o>o'                                                  , bufopts) -- Alacritty for some reason (Alt capital M?)
    map.set('i', '<C-cr>'            , '<C-o>o'                                                  , bufopts)
    map.set('i', '<F9>'              , '<C-o>o'                                                  , bufopts) -- On Windows | PowerToys > Keyboard Manager
    map.set('v', '<C-cr>'            , '<ESC>o'                                                  , bufopts)
    map.set('v', '<F9>'              , '<ESC>o'                                                  , bufopts) -- On Windows | PowerToys > Keyboard Manager
    map.set('i', '<C-Down>'          , '<C-o><C-e>'                                              , bufopts)
    map.set('i', '<S-Up>'            , '<left><C-o>vk'                                           , bufopts)
    map.set('i', '<S-Down>'          , '<C-o>vj'                                                 , bufopts)
    map.set('i', '<S-left>'          , '<left><C-o>v'                                            , bufopts)
    map.set('i', '<S-right>'         , '<C-o>v'                                                  , bufopts)
    map.set('i', '<C-S-left>'        , '<left><C-o>vb'                                           , bufopts)
    map.set('i', '<C-S-right>'       , '<C-o>vw'                                                 , bufopts)
    map.set('i', '<C-x>'             , '<C-o>dd'                                                 , bufopts) -- i fucked up termux or this messes up with termux
    map.set('v', '<C-x>'             , 'di'                                                      , bufopts)
    map.set('v', '<BS>'              , '"_di'                                                    , bufopts)
    map.set('v', '<left>'            , 'O<ESC>i'                                                 , bufopts) -- Make it jump like in vscode vim.fn.col('O')?
    map.set('v', '<right>'           , '<ESC>i<right>'                                           , bufopts) -- Make it jump like in vscode
    map.set('v', '<up>'              , '<ESC><up>i'                                              , bufopts) -- fix right or left
    map.set('v', '<down>'            , '<ESC><down>i'                                            , bufopts) -- fix right or left
    map.set('v', '<S-right>'         , 'l'                                                       , bufopts)
    map.set('v', '<S-left>'          , 'h'                                                       , bufopts)
    map.set('v', '<S-up>'            , 'k'                                                       , bufopts)
    map.set('v', '<S-down>'          , 'j'                                                       , bufopts)
    map.set('i', '<C-_>'             , '<C-o>:Commentary<cr>'                                    , bufopts) -- On Windows
    map.set('i', '<C-/>'             , '<C-o>:Commentary<cr>'                                    , bufopts)
    map.set('v', '<C-_>'             , ':Commentary<cr>'                                         , bufopts) -- On Windows
    map.set('v', '<C-/>'             , ':Commentary<cr>'                                         , bufopts)
    map.set('i', '<C-b>'             , '<ESC>:Neotree toggle<cr>'                                , bufopts)
    map.set('n', '<C-b>'             , ':Neotree toggle<cr>'                                     , bufopts)
    map.set('i', '<C-z>'             , '<C-o>u'                                                  , bufopts)
    map.set('v', '<C-z>'             , '<ESC>ui'                                                 , bufopts)
    map.set('i', '<C-r>'             , '<C-o>:redo<cr>'                                          , bufopts)
    map.set('i', '<C-S-z>'           , '<C-o>:redo<cr>'                                          , bufopts)
    map.set('i', '<F10>'             , '<C-o>:redo<cr>'                                          , bufopts) -- On Windows | PowerToys > Keyboard Manager
    map.set('i', '<C-BS>'            , '<esc><right>"_dbi'                                       , bufopts) -- ESC because last char (for now)
    map.set('i', '<C-h>'             , '<esc><right>"_dbi'                                       , bufopts)
    map.set('i', '<C-j>'             , '<esc>:ToggleTerm direction=horizontal<cr>'               , bufopts)
    map.set('i', '<C-d>'             , '<esc><right>:call vm#commands#ctrln(1)<cr>'              , bufopts)
    map.set('i', '<F4>'              , '<C-o>"_dd'                                               , bufopts) -- On Windows Only?
    map.set('i', '<C-S-k>'           , '<C-o>"_dd'                                               , bufopts)
    map.set('i', '<A-m>'             , '<C-o>:call toggle_strict_mode()<cr>'                              )
    map.set('n', '<A-m>'             , ':call toggle_strict_mode()<cr>'                                   )
    map.set('i', '<C-g>'             , '<C-o>:call go_to_relative_line()<left>'                           )
    map.set('i', '<F12>'             , vim.lsp.buf.definition                                    , bufopts) -- Go to definition
    -- May i make <C-a> to select all in the block and <C-S-a> to select ALL?
    -- map.set('i', '<C-w>'       , '<ESC>:tabclose<cr>i'                                     ) -- Go to definition | hmm...

    -- MOUSE
    map.set('v', '<RightMouse>'      , 'yi'                                               , bufopts)
    map.set('i', '<RightMouse>'      , '<C-o>p'                                           , bufopts)
    map.set('i', '<ScrollWheelUp>'   , '<C-o>4<C-Y>'                                      , bufopts) -- MAYBE only for termux if indeed issue with <C-x>
    map.set('i', '<ScrollWheelDown>' , '<C-o>4<C-E>'                                      , bufopts) -- MAYBE only for termux if indeed issue with <C-x>
    map.set('i', '<C-LeftMouse>'     , '<LeftMouse><C-o>:lua vim.lsp.buf.definition()<CR>', bufopts) -- Go to definition
    map.set('n', '<C-LeftMouse>'     , '<LeftMouse>:lua vim.lsp.buf.definition()<CR>'     , bufopts) -- Go to definition
    --TODO: Add vertical scroll

    -- ADD ctrl+x on v mode
    -- Sto else vale variable to <CR> giati alla commands mporei na to kanoun overide
    vim.api.nvim_command("cnoremap <expr> <CR> (getcmdtype() ==# ':' && getcmdline() =~# '^call go_to_relative_line') ? '<CR><C-o>^' : '<CR>'") -- https://noahfrederick.com/log/vim-streamlining-grep
    --vim.keymap.set('n', '<C-r>'     , 'i') -- because of some issue when at the end of change list
    -- maybe use bacspace as dd on visual
    -- -- About Search
    vim.keymap.set('i', '<C-f>'    , '<esc>:let mode=1<cr>/')
