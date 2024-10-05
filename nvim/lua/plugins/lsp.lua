return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local util = require("lspconfig.util")
      lspconfig.lua_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.ast_grep.setup({})

      lspconfig.eslint.setup({
        root_dir = util.root_pattern(
          ".eslintrc",
          ".git",
          "package.json",
          "eslint.config.mjs"
        ),
        workspaceFolders = {
          {
            name = "project",
            uri = vim.uri_from_fname(vim.fn.getcwd()),
          },
        },

        --  Setting up the npm eslint stuff
        settings = {
          eslint = {
            workingDirectories = { mode = "auto" }, -- Automatically detect working directory
            packageManager = "npm", -- Or "yarn" if using Yarn
          },
        },

        on_attach = function(client, bufnr)
          -- setting npm eslint stuff
          client.server_capabilities.documentFormattingProvider = false

          -- auto format on save
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
          })
        end,
      })
    end,
  },
}
