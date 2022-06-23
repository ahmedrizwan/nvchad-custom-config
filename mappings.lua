local M = {}

-- add this table only when you want to disable default keys
M.disabled = {
  n = {
      ["<leader>tk"] = "",
      ["<leader>bc"] = "",
      ["<leader>gt"] = "",
      ["<leader>cm"] = "",
      ["<leader>ca"] = "",
  },
  i = {
      ["<C-l>"] = "",
  },
}

M.lspconfig = {
   n = {
      ["<leader>la"] = {
         function()
            vim.lsp.buf.code_action()
         end,
         "   lsp code_action",
      },
   }
}

M.telescope = {
   n = {
      ["<leader>ft"] = { "<cmd> Telescope themes <CR>", "   nvchad themes" },
      ["<leader>fk"] = { "<cmd> Telescope keymaps <CR>", "   show keys" },
      ["<leader>gs"] = { "<cmd> Telescope git_status <CR>", "  git status" },
      ["<leader>gm"] = { "<cmd> Telescope git_commits <CR>", "  git commits" },
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
   },
}

M.nvim_dap = {
   n = {
      ["<leader>dd"] = {
         function()
            require("dap").toggle_breakpoint()
         end,
         "   toggle breakpoint",
      },
      ["<leader>dr"] = {
         function()
            require("dap").repl.open()
         end,
         "   open repl",
      },
      ["<leader>di"] = {
         function()
            require("dap.ui.widgets").hover()
         end,
         "   hover",
      },
      ["<leader>dj"] = {
         function()
            require("dap").step_over()
         end,
         "   step over",
      },
      ["<leader>dk"] = {
         function()
            require("dap").step_out()
         end,
         "   step out",
      },
      ["<leader>dl"] = {
         function()
            require("dap").step_into()
         end,
         "   step into",
      },
      ["<leader>dh"] = {
         function()
            require("dap").continue()
         end,
         "   continue",
      },
      ["<leader>dx"] = {
         function()
            require("dap").terminate()
         end,
         "   terminate",
      },
   }
}

M.buffers = {
   n = {
      ["<leader>bn"] = { "<cmd> bn <CR>", "  next buffer" },
      ["<leader>bp"] = { "<cmd> bn <CR>", "  previous buffer" },
   }
}

-- M.copilot = {
--     i = {
--         ["<C-l>"] = { "<cmd> copilot#Accept(\"\") <CR>", "  copilot accept" },
--     }
-- }

return M

