-- Install 'mini.nvim' with 'mini.deps'
local path_package = vim.fn.stdpath('data') .. '/site/'
local mini_path = path_package .. 'pack/deps/start/mini.nvim'
if not vim.loop.fs_stat(mini_path) then
  vim.cmd('echo "Installing `mini.nvim`" | redraw')
  local clone_cmd = {
    'git', 'clone', '--filter=blob:none',
    '--branch', 'stable',
    'https://github.com/echasnovski/mini.nvim', mini_path
  }
  vim.fn.system(clone_cmd)
  vim.cmd('packadd mini.nvim | helptags ALL')
  vim.cmd('echo "Installed `mini.nvim`" | redraw')
end

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
