return {
  -- Plugin chính: blink.cmp
  {
    "saghen/blink.cmp",
    version = "*",
    event = "InsertEnter",
    config = function()
      local blink = require("blink.cmp")

      blink.setup({
        -- Nguồn gợi ý
        sources = {
          default = { "lsp", "path", "buffer" },
        },
        -- Phím tắt
        keymap = {
          ["<Tab>"] = { "select_next", "fallback" },
          ["<S-Tab>"] = { "select_prev", "fallback" },
          ["<CR>"] = { "accept", "fallback" },
          ["<C-e>"] = { "cancel", "fallback" },
        },
      })
    end,
  },
}
