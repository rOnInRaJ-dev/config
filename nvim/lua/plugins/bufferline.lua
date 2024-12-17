return {
  "akinsho/bufferline.nvim",
  event = "BufEnter",
  config = function()
    vim.opt.mousemoveevent = true
    require("bufferline").setup({
      options = {
        mode = "buffers", -- "tabs" or "buffers'
        themable = true,
        numbers = "ordinal",
        hover = {
          enabled = true,
          delay = 1,
          reveal = { "close" },
        },
        always_show_bufferline = true,
        number_style = "superscript",
      },
    })
  end,
}
