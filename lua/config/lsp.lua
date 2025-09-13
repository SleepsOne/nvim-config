return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local lspconfig = require("lspconfig")

    -- Java
    lspconfig.jdtls.setup({})

    -- JavaScript/TypeScript
    lspconfig.tsserver.setup({})

    -- Go
    lspconfig.gopls.setup({})

    -- Python
    lspconfig.pyright.setup({})
  end,
}
