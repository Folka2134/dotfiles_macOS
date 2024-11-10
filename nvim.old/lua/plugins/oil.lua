return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = {
    "echasnovski/mini.icons",
  },
  config = function()
    require('oil').setup()
    vim.keymap.set("n", "<S-Enter>", ":Oil<CR>", {})
  end
}

