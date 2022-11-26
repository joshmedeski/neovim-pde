local wk = require("which-key")

wk.setup { }

wk.register({
  b = {
    name = "Buffers",
    b = "<cmd>Telescope buffers<cr>",
    -- next
    n = "<cmd>bn<cr>",
    j = "<cmd>bn<cr>",
    -- previous
    p = "<cmd>bp<cr>",
    k = "<cmd>bp<cr>",
    -- close
    x = "<cmd>bd<cr>",
    w = "<cmd>bd<cr>",
    -- surrounding
    s = {
      -- delete all surrounding buffers
      -- d = "<cmd>%bd\|e#\|bd#<cr>\|'"",
    }
  },

  f = "<cmd>lua require('lf').start()<cr>",
}, { prefix = "<leader>" })
