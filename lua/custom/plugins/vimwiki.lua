return {
  {
    'vimwiki/vimwiki',
    config = function()
      vim.g.vimwiki_dir_link = 'index'
      vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
        pattern = { '*.wiki' },
        callback = function()
          vim.keymap.set('n', '<leader>WY', [[:VimwikiToggleListItem<CR>]], { noremap = true, silent = true, buffer = true, desc = 'Toggle Item' })
        end,
      })
    end,
  },
}
