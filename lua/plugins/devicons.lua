return {
  "nvim-tree/nvim-web-devicons",
  lazy = true, -- chỉ load khi cần
  config = function()
    require("nvim-web-devicons").setup({
      default = true,
    })
  end,
}
