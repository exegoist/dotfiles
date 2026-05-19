-- Install 'mini.nvim' with 'mini.deps'
vim.pack.add({
  { src = 'https://github.com/nvim-mini/mini.nvim', version = 'stable' },
})

-- Set up 'mini.deps'
require('mini.deps').setup({ path = { package = path_package } })
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

-- appearance plugins
require('mini.icons').setup()
require('mini.statusline').setup()

-- third-party plugins
local add = MiniDeps.add
add({
  source = 'vladdoster/remember.nvim',
})
add({
  source = 'stevearc/conform.nvim',
})
add({ source = "catppuccin/nvim", name = "catppuccin" })

-- config
require('base')
require('keymap')
require('p-conform')
require('p-remember')
