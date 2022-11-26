local status_ok, lualine = pcall(require, "lualine")
if not status_ok then
  return
end

local theme = require('lualine.themes.catppuccin')
theme.normal.c.bg = nil

local hide_in_width = function()
  return vim.fn.winwidth(0) > 80
end

local diagnostics = {
  "diagnostics",
  sources = { "nvim_diagnostic" },
  sections = { 'error', 'warn', 'info', 'hint' },
  symbols = { error = " ", warn = " ", info = " " },
  colored = true,
  update_in_insert = false,
  always_visible = false,
}

local diff = {
  "diff",
  colored = true,
  symbols = { added = " ", modified = " ", removed = " " },
  always_visible = false,
  cond = hide_in_width
}

local filetype = {
  "filetype",
  icons_enabled = false,
}

local location = {
  "location",
  padding = 0,
}

local spaces = function()
  return "spaces: " .. vim.api.nvim_buf_get_option(0, "shiftwidth")
end

local mode = { "mode", colored = false }

lualine.setup {
  options = {
    globalstatus = true,
    icons_enabled = true,
    theme = theme,
    component_separators = { left = "", right = "" },
    section_separators = { left = "", right = "" },
    disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {},
    lualine_b = {},
    -- lualine_b = { mode },
    lualine_c = { diff, diagnostics },
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  },
}
