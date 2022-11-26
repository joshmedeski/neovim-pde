-- TODO: setup which key
-- TODO: port all my leader.vim commands (and heck luavim)
-- TODO: setup hammerspoon workflow
-- TODO: add todo icons

-- TODO: Research impatient
-- https://github.com/lewis6991/impatient.nvim
require "user.impatient" -- Improve startup time for Neovim
require "user.options"
require "user.keymaps"

-- plugins
require "user.plugins"

require "user.autocommands"
require "user.colorscheme"
require "user.cmp"
require "user.telescope"
require "user.gitsigns"
require "user.transparent"
require "user.treesitter"
require "user.autopairs"
require "user.comment"
require "user.nvim-tree"
require "user.bufferline"
require "user.lualine"
require "user.toggleterm"
require "user.project"
require "user.illuminate"
require "user.indentline"
require "user.alpha"
require "user.lsp"
require "user.dap"
