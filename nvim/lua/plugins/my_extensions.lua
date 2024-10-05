return {
  {
    "ibhagwan/fzf-lua",
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup({
        -- config

        theme = "hyper",
        config = {
          week_header = {
            enable = true,
          },
          shortcut = {
            {
              desc = "󰊳 Update",
              group = "@property",
              action = "Lazy update",
              key = "u",
            },
            {
              icon = " ",
              icon_hl = "@variable",
              desc = "Files",
              group = "Label",
              action = "Telescope find_files",
              key = "f",
            },
            {
              desc = " Apps",
              group = "DiagnosticHint",
              action = "Telescope app",
              key = "a",
            },
            {
              desc = " dotfiles",
              group = "Number",
              -- action = "Telescope dotfiles",
              -- action = "lua require('telescope.builtin').find_files({ prompt_title = 'Dotfiles', cwd = '~/.config/nvim', hidden = true })",
              action = "Neotree reveal ~/.config",
              key = "d",
            },
            {
              desc = " testing new file",
              group = "Number",
              action = "Neotree reveal ~/.config",
              key = "c",
            },
          },
        },
        -- ----------------
      })
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
}
