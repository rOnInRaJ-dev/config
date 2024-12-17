-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Example of a keyremapping idk idc what it does
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

-- set <leader>uS to spell_suggest
vim.keymap.set(
  "n",
  "<leader>uS",
  ":lua require'fzf-lua'.spell_suggest({ winopts = {relative='cursor',row=1.01, col=0, height=0.2, width=0.2} })<cr>",
  { desc = "Spelling Suggestions" }
)

-- Bind "qq" to bufremove
--this is the command i want to replicate using simple commadns instead of the <leader>
-- map("n", "<leader>bd", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
--vim.keymap.set("n", "<cmd>:q<cr>", LazyVim.ui.bufremove, { desc = "Delete Buffer" })
vim.keymap.set("n", "qq", function()
  require("snacks").bufdelete()
end, {
  desc = "Delete Buffer",
  noremap = true,
})

-- Remap 'U' to redo by having it simply be remapped to ctrl-R
vim.keymap.set("n", "U", "<C-r>", {
  noremap = true,
})
--vim.cmd("nremap U :redo<CR> ")

-- Set J and K to jump up or down by 9 lines
vim.keymap.set("n", "J", "9j")
vim.keymap.set("v", "J", "9j")

vim.keymap.set("n", "K", function()
  vim.cmd("normal! 9k")
end, { noremap = true, silent = true })

vim.keymap.set("v", "K", function()
  vim.cmd("normal! 9k")
end, { noremap = true, silent = true })

-- Set dm to delete mark at current line
vim.keymap.set("n", "dm", function()
  vim.cmd("normal! m-")
end, { noremap = true, silent = true })

-- Set / to search for exact
vim.keymap.set("n", "/", "/\\v", { noremap = true, silent = true })

-- YANKY keymaps
vim.keymap.set("n", "<c-p>", "<Plug>(YankyPreviousEntry)")
vim.keymap.set("n", "<c-n>", "<Plug>(YankyNextEntry)")
