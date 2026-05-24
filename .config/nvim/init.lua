vim.pack.add({
  { src = 'https://github.com/nvim-mini/mini.nvim', version = 'stable' },
  { src = 'https://github.com/nvim-mini/mini.files', version = 'stable' },
  { src = 'https://github.com/nvim-mini/mini.notify', version = 'stable' },
  { src = 'https://github.com/nvim-mini/mini.ai', version = 'stable' },
  { src = 'https://github.com/nvim-mini/mini.comment', version = 'stable' },
  { src = 'https://github.com/nvim-mini/mini.operators', version = 'stable' },
  { src = 'https://github.com/nvim-mini/mini.move', version = 'stable' },
  { src = 'https://github.com/nvim-mini/mini.pairs', version = 'stable' },
  { src = 'https://github.com/nvim-mini/mini.surround', version = 'stable' },
  { src = 'https://github.com/nvim-mini/mini.misc', version = 'stable' },
  { src = 'https://github.com/nvim-mini/mini.icons', version = 'stable' },
  { src = 'https://github.com/nvim-mini/mini.statusline', version = 'stable' },
})

require('mini.files').setup()
require('mini.notify').setup()

-- editing plugins
require('mini.ai').setup()
require('mini.comment').setup()
require('mini.move').setup({
    mappings = {
      left  = '<S-left>',
      right = '<S-right>',
      down  = '<S-down>',
      up    = '<S-up>',

      line_left  = '<S-left>',
      line_right = '<S-right>',
      line_down  = '<S-down>',
      line_up    = '<S-up>',
    }
  }
)
require('mini.operators').setup()
require('mini.pairs').setup()
require('mini.surround').setup()
require('mini.misc').setup()

-- appearance plugins
require('mini.icons').setup()
require('mini.statusline').setup()

-- config
require('base')
require('keymap')
