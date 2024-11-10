return  {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<F1>", ":Neotree filesystem reveal right toggle<CR>")
    -- Move up = p
    -- Collapse folder = l
    -- Expand folder = '
    -- Collapse all = C-left
    -- create folder = a
    -- new file = n
  end
}
