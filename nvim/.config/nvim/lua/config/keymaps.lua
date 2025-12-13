-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local set = vim.keymap.set
set("i", "jj", "<Esc>", { noremap = false })

local map = function(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  set(mode, lhs, rhs, options)
end
map("i", "<C-r>+", "<C-r><C-o>+", { desc = "Insert clipboard, keeping indentation" })
map("i", "<S-Insert>", "<C-r><C-o>*", { desc = "Insert primary clipboard, keeping indentation" })
set("c", "<S-Insert>", "<C-r>*", { desc = "Insert primary clipboard, keeping indentation" })
map("i", "<C-r>*", "<C-r><C-o>*", { desc = "Insert primary clipboard, keeping indentation" })
map("v", "<C-Insert>", '"*y')
map("v", "<S-Delete>", '"*d')
