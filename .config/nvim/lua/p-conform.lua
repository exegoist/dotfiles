require("conform").setup({
  formatters_by_ft = {
    lua = { "stylua" },
    xml = { "xmllint" },
  },
})
