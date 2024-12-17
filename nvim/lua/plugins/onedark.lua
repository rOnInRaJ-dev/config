return {
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        -- style options = { "dark", "darker", "cool", "deep", "}
        style = "dark",
        transparent = true,
      })

      require("onedark").load()
    end,
  },
}
