require "user.impatient" -- Improve startup time for Neovim

require "user.options"
require "user.keymaps"

-- TODO: add todo icons
-- TODO: setup hammerspoon workflow

-- plugins
require "user.plugins"

-- appearance
require "user.colorscheme"
require "user.transparent"

-- plugins' configs
require "user.alpha"
require "user.autocommands"
require "user.autopairs"
require "user.bufferline"
require "user.cmp"
require "user.comment"
require "user.dap"
require "user.gitsigns"
require "user.illuminate"
require "user.indentline"
require "user.lsp"
require "user.lualine"
require "user.nvim-tree"
require "user.project"
require "user.telescope"
require "user.toggleterm"
require "user.treesitter"

-- TODO: port all my leader.vim commands (and heck luavim)
require "user.which-key"
