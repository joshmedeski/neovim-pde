local wk = require("which-key")

wk.setup { }

wk.register({
  ["<leader>"] = {"<cmd>lua require('harpoon.mark').add_file()<CR>", "Add to Harpoon"},
  ["0"] = {"<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", "Harpoon Menu"},
  ["1"] = {"<cmd>lua require('harpoon.ui').nav_file(1)<CR>", "Harpoon 1"},
  ["2"] = {"<cmd>lua require('harpoon.ui').nav_file(2)<CR>", "Harpoon 2"},
  ["3"] = {"<cmd>lua require('harpoon.ui').nav_file(3)<CR>", "Harpoon 3"},
  ["4"] = {"<cmd>lua require('harpoon.ui').nav_file(4)<CR>", "Harpoon 4"},
  ["5"] = {"<cmd>lua require('harpoon.ui').nav_file(5)<CR>", "Harpoon 5"},

  b = {
    name = "Buffers",
    b = { "<cmd>Telescope buffers<cr>", "Show buffers"},
    -- next
    n = { "<cmd>bn<cr>", "Next buffer"},
    j = { "<cmd>bn<cr>", "Next buffer"},
    l = { "<cmd>bn<cr>", "Next buffer"},
    -- previous
    p = {"<cmd>bp<cr>", "Previous buffer"},
    k = {"<cmd>bp<cr>", "Previous buffer"},
    h = {"<cmd>bp<cr>", "Previous buffer"},
    -- delete (close)
    d = {"<cmd>bd<cr>", "Close buffer"},
    x = {"<cmd>bd<cr>", "Close buffer"},
    w = {"<cmd>bd<cr>", "Close buffer"},
    -- surrounding
    -- s = {
      -- delete all surrounding buffers
      -- d = "<cmd>%bd\|e#\|bd#<cr>\|'"",
    -- }
  },

  f = { "<cmd>lua require('lf').start()<cr>", "Lf"},
}, { prefix = "<leader>" })
