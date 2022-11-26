require "user.impatient" -- Improve startup time for Neovim

require "user.options"
require "user.keymaps"

-- plugins
require "user.plugins"

-- appearance
require "user.catppuccin"
require "user.transparent"
require "user.colorscheme"

-- startup screen
require "user.alpha"

-- git
require "user.gitsigns"

require "user.autocommands"
require "user.autopairs"
require "user.cmp"
require "user.comment"
require "user.dap"
require "user.illuminate"
require "user.indentline"
require "user.lsp"
require "user.lualine"
require "user.nvim-tree"
require "user.project"
require "user.telescope"
require "user.toggleterm"
require "user.treesitter"
require "user.trouble"
require "user.todo-comments"

-- TODO: port all my leader.vim commands (and heck luavim)
require "user.which-key"
