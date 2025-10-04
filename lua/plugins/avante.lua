return {
  {
    "yetone/avante.nvim",
    event = { "BufReadPost", "BufNewFile" }, -- Tải khi mở file
    lazy = false, -- Load ngay cho task lớn
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
    build = "make",
    opts = {
      provider = "copilot",
      providers = {
        copilot = {
          extra = {
            max_tokens = 128000, -- Đủ cho file lớn (~5000-10000 dòng)
            temperature = 0.8, -- Cân bằng sáng tạo và chính xác
          },
        },
      },
      auto_suggestions_provider = nil, -- Tắt auto-suggestions, dùng copilot.vim
      behaviour = {
        auto_suggestions = false,
        auto_apply_diff_after_generation = false, -- Xác nhận diff cho task lớn
      },
      ui = {
        border = "rounded",
        layout = "vertical",
        width = 0.5,
        height = 0.6,
      },
    },
  },
}
