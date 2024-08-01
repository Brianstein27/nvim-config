return {
    "ziontee113/color-picker.nvim",
    config = function()
      require("color-picker")
      vim.keymap.set("n", "<leader>cp", "<cmd>PickColor<cr>", opts)
    end,
  }