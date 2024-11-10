return  {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_install = true,
      ensure_installed = {"lua", "java", "javascript", "bash", "html", "vim", "vimdoc", "go", "typescript", "python"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
