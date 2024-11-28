return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = { 'bash', 'html', 'java', 'json', 'lua', 'markdown', 'markdown_inline', 'python', 'toml', 'typescript', 'vim', 'yaml' },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}
