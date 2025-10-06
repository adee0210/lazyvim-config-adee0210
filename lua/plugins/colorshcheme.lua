return {
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.material_style = "deep ocean"

      -- ⚙️ Thiết lập theme
      require("material").setup({
        contrast = {
          terminal = false,
          sidebars = true,
          floating_windows = false,
          cursor_line = false,
          non_current_windows = false,
        },
        styles = {
          comments = { italic = true },
          keywords = { bold = true },
        },
        plugins = {
          "gitsigns",
          "nvim-tree",
          "telescope",
          "which-key",
          "indent-blankline",
          "nvim-cmp",
          "dap",
          "neogit",
        },
        disable = {
          background = false,
          term_colors = false,
          eob_lines = false,
        },
        high_visibility = {
          darker = true, -- Làm text nổi bật hơn trên nền tối
        },
        lualine_style = "stealth", -- Cho lualine đồng bộ theme
      })

      -- 🌙 Áp dụng theme
      vim.cmd.colorscheme("material")
    end,
  },
}
