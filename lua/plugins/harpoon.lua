return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require('harpoon')
      harpoon:setup()

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = 'Harpoon: Add file' })

      vim.keymap.set('n', '<C-q>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'Harpoon: Toggle menu' })

      vim.keymap.set('n', '<S-q>', function()
        harpoon:list():select(1)
      end, { desc = 'Harpoon: Go to file 1' })

      vim.keymap.set('n', '<S-w>', function()
        harpoon:list():select(2)
      end, { desc = 'Harpoon: Go to file 2' })

      vim.keymap.set('n', '<S-e>', function()
        harpoon:list():select(3)
      end, { desc = 'Harpoon: Go to file 3' })

      vim.keymap.set('n', '<S-r>', function()
        harpoon:list():select(4)
      end, { desc = 'Harpoon: Go to file 4' })

      vim.keymap.set('n', '<S-t>', function()
        harpoon:list():select(5)
      end, { desc = 'Harpoon: Go to file 5' })
    end,
  },
}
