local M = {}

-- add this table only when you want to disable default keys
M.disabled = {
  n = {
      ["<leader>tk"] = "",
  }
}

M.telescope = {
   n = {
      -- theme switcher
      ["<leader>ft"] = { "<cmd> Telescope themes <CR>", "   nvchad themes" },
      ["<leader>fk"] = { "<cmd> Telescope keymaps <CR>", "   show keys" },
   },
}

M.nvterm = {
   n = {
      -- toggle in normal mode
      ["<leader>tf"] = {
         function()
            require("nvterm.terminal").toggle "float"
         end,
         "   toggle floating term",
      },

      ["<leader>th"] = {
         function()
            require("nvterm.terminal").toggle "horizontal"
         end,
         "   toggle horizontal term",
      },

      ["<leader>tv"] = {
         function()
            require("nvterm.terminal").toggle "vertical"
         end,
         "   toggle vertical term",
      },

      -- new

      ["<leader>h"] = {
         function()
            require("nvterm.terminal").new "horizontal"
         end,
         "   new horizontal term",
      },

      ["<leader>v"] = {
         function()
            require("nvterm.terminal").new "vertical"
         end,
         "   new vertical term",
      },
   },
}

return M

