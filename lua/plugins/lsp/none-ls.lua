return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        null_ls.builtins.formatting.black.with({
          extra_args = { "--line--length=120" }
        }),
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.asmft,
        null_ls.builtins.diagnostics.pylint.with({
          diagnostics_postprocess = function(diagnostic)
            diagnostic.code = diagnostic.message_id
          end,
        }),
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.htmlbeautifier,
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.goimports_reviser,
        null_ls.builtins.diagnostics.cppcheck,
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.diagnostics.zsh,
      },
    })

    vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
  end,
}
