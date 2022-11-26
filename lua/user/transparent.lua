local status_ok, transparent = pcall(require, "transparent")
if not status_ok then
  return
end

transparent.setup({
  enable = true,
  extra_groups = { },
})

-- TODO: fix bug and submit PR (support NONE)
-- https://github.com/folke/which-key.nvim/issues/52
vim.cmd[[hi WhichKeyFloat ctermbg=BLACK ctermfg=BLACK]]
