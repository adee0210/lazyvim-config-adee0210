return {
  {
    "chipsenkbeil/distant.nvim",
    branch = "v0.3", -- Sử dụng branch ổn định
    config = function()
      require("distant"):setup()
    end,
  },
}
