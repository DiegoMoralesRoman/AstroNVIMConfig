-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"]  = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["oo"]         = { "o<Esc>k", desc = "Inserts one line after the current one" },
    ["OO"]         = { "O<Esc>j", desc = "Inserts one line before the current one" },
    ["o"]          = { "o" },
    ["O"]          = { "O" },
    -- Move through buffers
    ["H"]          = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc =
    "Next buffer" },
    ["L"]          = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc =
    "Prev buffer" },
    ["<A-l>"]      = { ">b", desc = "Moves the buffer to the right" },
    ["<A-h>"]      = { "<b", desc = "Moves the buffer to the left" },
    ["<C-t>"]      = { "<cmd>ToggleTerm<cr>" }
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  x = {
    ["<leader>e"] = { "<cmd>ChatGPTEditWithInstructions<cr>", desc = "Edits with ChatGPT" }
  }
}
