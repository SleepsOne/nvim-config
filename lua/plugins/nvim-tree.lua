return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- icon file
  },
  config = function()
    require("nvim-tree").setup({})
    -- Toggle bằng Ctrl+b
    vim.keymap.set("n", "<C-b>", ":NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })
  end,
}
