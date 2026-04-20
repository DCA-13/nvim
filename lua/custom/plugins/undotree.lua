return {
  {
    'mbbill/undotree',
    config = function()
      vim.keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle)
      vim.g.undotree_DiffCommand = "FC"
    end,
  },
}
