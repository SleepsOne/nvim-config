return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "jay-babu/mason-nvim-dap.nvim",
  },
  config = function()
    require("mason-nvim-dap").setup({
      ensure_installed = { "java-debug-adapter", "js-debug-adapter", "delve", "debugpy" },
      automatic_setup = true,
    })
  end,
}
