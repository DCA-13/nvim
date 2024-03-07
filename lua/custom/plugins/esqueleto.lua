return {
  {
    'cvigilv/esqueleto.nvim',
    enabled = false,
    opts = {},
    config = function()
      require('esqueleto').setup {
        patterns = { 'tex', 'hs' },
      }
    end,
  },
}
