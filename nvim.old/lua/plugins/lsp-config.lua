return {
  {
    "mfussenegger/nvim-jdtls"
  },
  {
    "williamboman/mason.nvim",
  --"mfussenegger/nvim-dap",
    --"jay-babu/mason-nvim-dap.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
      --require("mason-nvm-dap").setup()
    end,
    opts = {
      automatic_installation = true,
    }
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        capabilities = capabilities
      })
      lspconfig.solargraph.setup({
        capabilities = capabilities
      })
      lspconfig.html.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.ast_grep.setup({
        capabilities = capabilities
      })

      --vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      --vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      --vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      --vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
