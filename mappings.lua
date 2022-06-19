local M = {}

-- add this table only when you want to disable default keys
M.disabled = {
  n = {
      ["<leader>tk"] = "",
      ["<leader>bc"] = "",
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

M.nvim_dap = {
   n = {
      ["<leader>db"] = {
         function()
            require("dap").toggle_breakpoint()
         end,
         "   toggle breakpoint",
      },
      ["<leader>do"] = {
         function()
            require("dap").repl.open()
         end,
         "   open repl",
      },
      ["<leader>dc"] = {
         function()
            require("dap").continue()
         end,
         "   continue",
      },
      ["<leader>dl"] = {
         function()
            require("dap").run_last()
         end,
         "   run last",
      },
   }
}

return M

