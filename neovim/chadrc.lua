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
   },
}

return M
