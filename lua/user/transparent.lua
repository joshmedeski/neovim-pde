require("transparent").setup({
  enable = true,
  extra_groups = {
    "BufferLineTabClose",
    "BufferLineFill",
    "BufferLineBackground",
    "BufferLineSeparator",
    "BufferLineIndicatorSelected",
  },
})

vim.cmd[[autocmd FileType mason setlocal winblend=10]]
