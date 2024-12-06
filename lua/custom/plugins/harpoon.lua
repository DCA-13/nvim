return {
  {
    'ThePrimeagen/harpoon',
    config = function()
      local harpoon_ui = require 'harpoon.ui'
      local harpoon_mark = require 'harpoon.mark'
      vim.keymap.set('n', '<leader>ho', function()
        harpoon_ui.toggle_quick_menu()
      end, { desc = '[H]arpoon [O]pen Menu' })
      vim.keymap.set('n', '<leader>ha', function()
        harpoon_mark.add_file()
      end, { desc = '[H]arpoon [A]dd' })
      vim.keymap.set('n', '<leader>hr', function()
        harpoon_mark.rm_file()
      end, { desc = '[H]arpoon [R]emove' })
      vim.keymap.set('n', '<leader>hc', function()
        harpoon_mark.clear_all()
      end, { desc = '[H]arpoon [C]lear' })
      vim.keymap.set('n', '<leader>1', function()
        harpoon_ui.nav_file(1)
      end, { desc = 'Harpoon [1]' })
      vim.keymap.set('n', '<leader>2', function()
        harpoon_ui.nav_file(2)
      end, { desc = 'Harpoon [2]' })
      vim.keymap.set('n', '<leader>3', function()
        harpoon_ui.nav_file(3)
      end, { desc = 'Harpoon [3]' })
      vim.keymap.set('n', '<leader>4', function()
        harpoon_ui.nav_file(4)
      end, { desc = 'Harpoon [4]' })
      vim.keymap.set('n', '<leader>5', function()
        harpoon_ui.nav_file(5)
      end, { desc = 'Harpoon [5]' })
    end,
  },
}
