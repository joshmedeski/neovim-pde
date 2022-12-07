local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require "telescope.actions"

telescope.setup {
  defaults = {
    file_ignore_patterns = { ".git/", "node_modules" },
    path_display = { "smart" },
    prompt_position = "top",
    prompt_prefix = " ",
    selection_caret = " ",
    sorting_strategy = "ascending",

    mappings = {
      i = {
        ["<Down>"] = actions.cycle_history_next,
        ["<Up>"] = actions.cycle_history_prev,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
      },
    },
  },

  pickers = {
    buffers = {
      layout_config = {
        preview_width = 0.6,
        prompt_position = "top",
      }
    },
    live_grep = {
      layout_config = {
        preview_width = 0.6,
        prompt_position = "top"
      }
    },
    find_files = {
      layout_config = {
        prompt_position = "top"
      }
    },
    git_files = {
      show_untracked = true,
      layout_config = {
        prompt_position = "top",
        preview_width = 0.6,
      }
    },
    commands = {
      layout_config = {
        prompt_position = "top"
      }
    },
    git_status = {
      layout_config = {
        prompt_position = "top"
      }
    }
  }
}

telescope.load_extension("harpoon")
