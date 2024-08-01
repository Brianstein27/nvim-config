return {
    {
      "romgrk/barbar.nvim",
      dependencies = {
        "lewis6991/gitsigns.nvim",  -- OPTIONAL: for git status
        "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
      },
      init = function()
        vim.g.barbar_auto_setup = false
        vim.keymap.set("n", "<leader>th", "<Cmd>BufferPrevious<CR>", opts)
        vim.keymap.set("n", "<leader>tl", "<Cmd>BufferNext<CR>", opts)
        vim.keymap.set("n", "<leader>tH", "<Cmd>BufferMovePrevious<CR>", opts)
        vim.keymap.set("n", "<leader>tL", "<Cmd>BufferMoveNext<CR>", opts)
        vim.keymap.set("n", "<leader>tx", "<Cmd>BufferClose<CR>", opts)
        vim.keymap.set("n", "<leader>tsn", "<Cmd>BufferOrderByName<CR>", opts)
        vim.keymap.set("n", "<leader>tsl", "<Cmd>BufferOrderByLanguage<CR>", opts)
      end,
      opts = {
        sidebar_filetypes = { NvimTree = { text = "NvimTree", align = "center" } },
        separator = { left = "▎", right = "" },
        separator_at_end = true,
      },
      version = "^1.0.0", -- optional: only update when a new 1.x version is released
    },
  }