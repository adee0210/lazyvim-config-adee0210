return {
  {
    "yetone/avante.nvim",
    event = { "BufReadPost", "BufNewFile" }, -- Tải khi mở file
    lazy = false, -- Load ngay khi vào Neovim
    build = "make",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
      "github/copilot.vim", -- Sử dụng Copilot làm provider
    },
    opts = {
      provider = "copilot", -- Dùng Copilot
      providers = {
        copilot = {
          extra = {
            max_tokens = 128000, -- Dành cho file lớn
            temperature = 0.7, -- Cân bằng giữa chính xác & sáng tạo
          },
        },
      },
      -- ⚙️ Tắt auto-suggestion để không hiển thị gợi ý mờ
      auto_suggestions_provider = nil,
      behaviour = {
        auto_suggestions = false,
        auto_apply_diff_after_generation = false, -- Tự tay xác nhận diff
      },
      ui = {
        border = "rounded",
        layout = "vertical",
        width = 0.5,
        height = 0.6,
      },
    },
    config = function(_, opts)
      require("avante").setup(opts)

      -- 🔧 Tắt ghost text của Copilot (cái mờ mờ gây khó chịu)
      vim.g.copilot_disable_inline = true
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true

      -- ⚡ Gán phím tắt thủ công để nhận gợi ý Copilot nếu muốn
      vim.keymap.set("i", "<C-l>", 'copilot#Accept("<CR>")', {
        expr = true,
        replace_keycodes = false,
        desc = "Accept Copilot suggestion",
      })
    end,
  },
}
