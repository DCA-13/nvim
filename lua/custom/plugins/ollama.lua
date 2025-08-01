local your_keymap = '<leader>ol'

return {
  'ziontee113/ollama.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
  },
  keys = { your_keymap },
  config = function()
    local ollama = require 'ollama'
    vim.keymap.set('n', your_keymap, function()
      ollama.show()
    end, { desc = 'Open Ollama' })
  end,
}
