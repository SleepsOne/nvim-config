-- LSP Config
-- Yêu cầu plugin: mason.nvim, mason-lspconfig.nvim, nvim-lspconfig
-- Cài plugin trong Lazy:
-- { "neovim/nvim-lspconfig" },
-- { "williamboman/mason.nvim" },
-- { "williamboman/mason-lspconfig.nvim" },

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local lspconfig = require("lspconfig")

    -- Mason setup
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls", -- Lua
        "pyright", -- Python
        "tsserver", -- JavaScript/TypeScript
        "gopls", -- Go
        "jdtls", -- Java
      },
      automatic_installation = true,
    })

    -- Keymaps cho LSP
    local on_attach = function(_, bufnr)
      local opts = { noremap = true, silent = true, buffer = bufnr }
      local keymap = vim.keymap.set

      keymap("n", "gd", vim.lsp.buf.definition, opts)
      keymap("n", "K", vim.lsp.buf.hover, opts)
      keymap("n", "gi", vim.lsp.buf.implementation, opts)
      keymap("n", "<leader>rn", vim.lsp.buf.rename, opts)
      keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)
      keymap("n", "gr", vim.lsp.buf.references, opts)
    end

    -- Nâng cao capabilities (cho completion)
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- Cấu hình từng LSP
    lspconfig.lua_ls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })

    lspconfig.pyright.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.tsserver.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.gopls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })

    lspconfig.jdtls.setup({
      on_attach = on_attach,
      capabilities = capabilities,
    })
  end,
}
