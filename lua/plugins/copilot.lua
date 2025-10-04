return {
  {
    "github/copilot.vim",
    lazy = false, -- load sớm nhất có thể
    init = function()
      -- 🚫 Tắt gợi ý mờ (ghost text)
      vim.g.copilot_disable_inline = true

      -- 🚫 Không dùng tab để nhận gợi ý
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
    end,
  },
}
