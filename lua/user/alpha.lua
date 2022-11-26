local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {
  [[     ██╗ ██████╗ ███████╗██╗  ██╗    ███╗   ███╗███████╗██████╗ ███████╗███████╗██╗  ██╗██╗]],
  [[     ██║██╔═══██╗██╔════╝██║  ██║    ████╗ ████║██╔════╝██╔══██╗██╔════╝██╔════╝██║ ██╔╝██║]],
  [[     ██║██║   ██║███████╗███████║    ██╔████╔██║█████╗  ██║  ██║█████╗  ███████╗█████╔╝ ██║]],
  [[██   ██║██║   ██║╚════██║██╔══██║    ██║╚██╔╝██║██╔══╝  ██║  ██║██╔══╝  ╚════██║██╔═██╗ ██║]],
  [[╚█████╔╝╚██████╔╝███████║██║  ██║    ██║ ╚═╝ ██║███████╗██████╔╝███████╗███████║██║  ██╗██║]],
  [[ ╚════╝  ╚═════╝ ╚══════╝╚═╝  ╚═╝    ╚═╝     ╚═╝╚══════╝╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝]]
}
dashboard.section.buttons.val = {
  dashboard.button("p", " " .. " Find file", ":Telescope git_files <CR>"),
  dashboard.button("h", " " .. " Harpoon Marks", ":Telescope harpoon marks <CR>"),
  dashboard.button("r", " " .. " Recent files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", " " .. " Find text", ":Telescope live_grep <CR>"),
  dashboard.button("c", " " .. " Config", ":e $MYVIMRC <CR>"),
  dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}
local function footer()
  return "joshmedeski.com @joshmedeski"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
