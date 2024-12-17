return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        ["md"] = { "prettier" },
        ["c"] = { "clang-format" },
        ["java"] = { "ast-grep" },
        ["python"] = { "ast-grep" },
        ["c#"] = { "ast-grep" },
      },
    },
  },
}
