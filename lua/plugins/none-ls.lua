return {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = function(_, opts)
    local nls = require("null-ls")

    opts.sources = vim.list_extend(opts.sources or {}, {
      -- ✅ JavaScript / TypeScript
      nls.builtins.formatting.prettier, -- format
      nls.builtins.diagnostics.eslint, -- lint
      nls.builtins.code_actions.eslint, -- quick fix

      -- ✅ Python
      nls.builtins.formatting.black, -- format
      nls.builtins.diagnostics.flake8, -- lint

      -- ✅ Go
      nls.builtins.formatting.goimports, -- organize imports + format
      nls.builtins.formatting.golines, -- format long lines

      -- ✅ Java
      nls.builtins.formatting.google_java_format, -- format Java

      -- ✅ Common (shell, etc.)
      nls.builtins.diagnostics.shellcheck, -- shell script lint
      nls.builtins.code_actions.shellcheck, -- quick fix
    })
  end,
}
