require("neorg").setup {
  load = {
    ["core.defaults"] = {},
    ["core.concealer"] = {},
    ["core.dirman"] = {
      config = {
        workspaces = {
          notes = "~/notes",
        },
        default_workspace = "notes",
      },
    },
    ["core.esupports.metagen"] = {
        config = {
          type = "auto",
          update_date = true,
          author = "exegoist",
        },
    },
  },
}

vim.wo.foldlevel = 99
vim.wo.conceallevel = 2

