return {
  {
    'pineapplegiant/spaceduck',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      vim.cmd.colorscheme 'spaceduck'

      -- Use full colors
      vim.opt.termguicolors = true

      -- You can configure highlights by doing something like
      vim.cmd.hi 'Comment gui=none'

      if vim.g.colors_name == 'spaceduck' then
        vim.cmd.hi 'Normal guifg=#edefd7 guibg=#0f111b'
        vim.cmd.hi 'StatusLineNC guifg=#edefd7 guibg=#1b1c36'
        vim.cmd.hi 'StatusLine guifg=#16172d guibg=#edefd7'
        vim.cmd.hi 'MiniStatuslineModeNormal guibg=#5ccc96 guifg=#1b1c36'
        vim.cmd.hi 'MiniStatuslineModeInsert guibg=#00a3cc guifg=#1b1c36'
        vim.cmd.hi 'MiniStatuslineModeCommand guibg=#f2ce00 guifg=#1b1c36'
        vim.cmd.hi 'MiniStatuslineModeVisual guibg=#e39400 guifg=#1b1c36'
        vim.cmd.hi 'VertSplit guifg=#090b11 guibg=#090b11'
        vim.cmd.hi 'Visual guibg=#343668'
        vim.cmd.hi 'Comment guifg=#41497f'
        vim.cmd.hi 'Special guifg=#007a99'
        vim.cmd.hi 'Delimiter guifg=#007a99'
        vim.cmd.hi 'Operator guifg=#ecf0c1'
        vim.cmd.hi 'Title guifg=#00a3cc'
        vim.cmd.hi 'Keyword guifg=#f2ce00'
        vim.cmd.hi 'Type guifg=#b3a1e6'
      end
    end,
  },
}
