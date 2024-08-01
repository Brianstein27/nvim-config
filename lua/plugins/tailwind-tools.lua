return {
	"luckasRanarison/tailwind-tools.nvim",
	dependencies = { "nvim-treesitter/nvim-treesitter" },
	opts = {},
	config = function()
		require("tailwind-tools").setup({
			custom_filetypes = { "*.erb" },
		})

		vim.keymap.set("n", "<leader>ts", ":TailwindSort<CR>", {})
	end,
}