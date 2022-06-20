local M = {}

-- add this table only when you want to disable default keys
M.disabled = {
  n = {
      ["<leader>tk"] = "",
      ["<leader>bc"] = "",
      ["<leader>gt"] = "",
      ["<leader>cm"] = "",
      ["<leader>ca"] = "",
  }
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
      ["<leader>dr"] = {
         function()
            print("Run debugger!")
            require("dap").run({
                name = "Launch",
                type = "node2",
                request = "launch",
                program = "${file}",
                cwd = vim.fn.getcwd(),
                sourceMaps = true,
                protocol = "inspector",
            })
         end,
         "   run debugger",
      },
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

