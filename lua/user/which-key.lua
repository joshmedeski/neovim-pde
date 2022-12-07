local wk = require("which-key")

wk.setup { }

wk.register({
  ["'"] = {"<cmd>lua require('harpoon.mark').add_file()<CR>", "Add to Harpoon"},
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

  f = { "<cmd>Lf<cr>", "Lf"},
  ["%"] = { "<cmd>source %<cr>", ":source %"},
  ["/"] = { "<cmd>noh<cr>", "Clear find"},

  g = {
    name = "git",
    b = {
      name = "blame",
      b = {"<cmd>GitBlameToggle<cr>", "Toggle blame"},
      o = {"<cmd>GitBlameOpenCommitURL<cr>", "Open Commit URL"},
    }
  },

-- nmap <leader><leader> <Plug>(coc-fix-current)
-- nmap <leader>G :Goyo<cr>
-- nmap <leader>a <Plug>(coc-codeaction)
-- nmap <leader>bsd :%bd\|e#\|bd#<cr>\|'"
-- nmap <leader>ee <Plug>(coc-fix-current)
-- nmap <leader>en <Plug>(coc-diagnostic-next)
-- nmap <leader>ep <Plug>(coc-diagnostic-prev)
-- nmap <leader>gP :CocCommand git.push<cr>
-- nmap <leader>gU :CocCommand git.chunkUnstage<cr>
-- nmap <leader>gb <Plug>(coc-git-blame)<cr>
-- nmap <leader>gc :CocCommand git.showCommit<cr>
-- nmap <leader>gdc :CocCommand git.diffCached<cr>
-- nmap <leader>gen <Plug>(coc-git-prevconflict)<cr>
-- nmap <leader>gep <Plug>(coc-git-nextconflict)<cr>
-- nmap <leader>gg :CocCommand git.chunkStage<cr>
-- nmap <leader>gi :CocCommand git.chunkInfo<cr>
-- nmap <leader>gn <Plug>(coc-git-nextchunk)<cr>
-- nmap <leader>go :CocCommand git.browserOpen<cr>
-- nmap <leader>gp <Plug>(coc-git-prevchunk)<cr>
-- nmap <leader>gs :GitStatus<cr>
-- nmap <leader>gt :CocCommand git.toggleGutters<cr>
-- nmap <leader>gu :CocCommand git.chunkUndo<cr>
-- nmap <leader>gy :CocCommand git.copyUrl<cr><cr>
-- nmap <leader>gz :CocCommand git.foldUnchanged<cr>
-- nmap <leader>h :HopWord<cr>
-- nmap <leader>j :<C-u>CocNext<CR>
-- nmap <leader>k :<C-u>CocPrev<CR>
-- nmap <leader>l :HopLine<cr>
-- nmap <leader>m :MaximizerToggle!<cr>
-- nmap <leader>o :<C-u>CocList outline<cr>
-- nmap <leader>q :wq!<cr>
-- nmap <leader>rn <Plug>(coc-rename)
-- nmap <leader>s :<C-u>CocList -I symbols<cr>
--
-- nnoremap <leader>\ <cmd>lua require('telescope.builtin').live_grep()<cr>
}, { prefix = "<leader>" })
