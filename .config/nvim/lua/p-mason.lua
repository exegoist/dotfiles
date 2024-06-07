require('mason').setup({
  ui = {
    icons = {
      package_installed = '✓',
      package_pending = '➜',
      package_uninstalled = '✗',
    },
  },
})

require('mason-tool-installer').setup({
  ensure_installed = {
    { 'stylua', auto_update = true },
    { 'xmlformatter', auto_update = true },
  },
})
