return {
  'ziontee113/ollama.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
  },
  keys = { '<leader>ol' },
  config = function()
    local ollama = require 'ollama'
    vim.keymap.set('n', '<leader>ol', function()
      ollama.show()
    end, { desc = 'Open Ollama' })
  end,
}
