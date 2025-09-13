-- lua/plugins/format.lua
return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      javascript = { "prettier" },
      typescript = { "prettier" },
      go = { "gofmt", "goimports" },
      python = { "black", "isort" },
      java = { "google-java-format" },
    },
  },
}
