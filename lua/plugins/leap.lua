return {
    "ggandor/leap.nvim",
    config = function()
      vim.keymap.set("n", "<leader>f", "<Plug>(leap-forward)")
      vim.keymap.set("n", "<leader>F", "<Plug>(leap-backward)")
    end,
  }