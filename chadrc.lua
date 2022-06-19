-- Just an example, supposed to be placed in /lua/custom/

local M = {}

M.plugins = {
  options = {
    lspconfig = {
       setup_lspconf = "custom.plugins.configs.lspconfig",
    },
  },
  user = require "custom.plugins",
  override = {
    ["nvim-treesitter/nvim-treesitter"] = {
      ensure_installed = {
        "html",
        "css",
        "typescript"
      },
    }
  },
}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "nightfox",
}

return M

