return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- cập nhật parser khi cài mới
  cmd = {
    "TSPlaygroundToggle",
    "TSHighlightCapturesUnderCursor",
    "TSNodeUnderCursor",
  },
  opts = {
    ensure_installed = { "lua", "vim", "javascript", "python", "go", "c", "cpp" }, -- ngôn ngữ bạn muốn
    highlight = { enable = true }, -- bật highlight
    indent = { enable = true }, -- bật indentation
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "gnn", -- bắt đầu chọn
        node_incremental = "grn", -- mở rộng
        scope_incremental = "grc",
        node_decremental = "grm", -- thu nhỏ
      },
    },
  },
}
