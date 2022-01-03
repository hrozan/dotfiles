local M = {}

M.options = {
  relativenumber = true
}


M.ui = {
   theme = "onedark",
   transparency = true
}

M.plugins = {
    options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
      nvimtree = {
         ui = {
            side = "right",
            width = 40,
         },
      },
   },
}

return M
