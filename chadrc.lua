-- Just an example, supposed to be placed in /lua/custom/

-- vim.cmd [[autocmd BufWritePre <buffer> lua Prettier]]

local M = {}

M.plugins = {
  options = {
    lspconfig = {
       setup_lspconf = "custom.plugins.configs.lspconfig",
    },
  },
  user = require "custom.plugins",
}

-- M.mappings = {
--   ["<leader>fm"] = {
--      function()
--         vim.lsp.buf.formatting()
--      end,
--      "   lsp formatting",
--   },
-- }

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.ui = {
   theme = "nightfox",
}

return M

