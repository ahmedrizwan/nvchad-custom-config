-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.

-- autocmds
local autocmd = vim.api.nvim_create_autocmd

-- format files on save
autocmd("BufWritePre", {
   pattern = "*.ts, *.tsx, *.html",
   command = "Prettier",
})

-- dap adapters (for debugging)
local dap = require "dap"

dap.adapters.node2 = {
  type = "executable",
  command = "node",
  args = {os.getenv("HOME") .. "/vscode-node-debug2/out/src/nodeDebug.js"},
}

dap.configurations.javascript = {
  {
    name = "Launch",
    type = "node2",
    request = "launch",
    program = "${file}",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    console = "integratedTerminal",
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = "Attach to process",
    type = "node2",
    request = "attach",
    processId = require"dap.utils".pick_process,
  },
}

dap.configurations.typescript = { -- works for node-bifrost project
  {
    name = "Launch",
    type = "node2",
    request = "launch",
    program = "${workspaceFolder}/packages/bifrost-server/dist/index.js",
    preLaunchTask = "yarn dev",
    cwd = vim.fn.getcwd(),
    sourceMaps = true,
    protocol = "inspector",
    console = "integratedTerminal",
  },
  {
    -- For this to work you need to make sure the node process is started with the `--inspect` flag.
    name = "Attach to process",
    type = "node2",
    request = "attach",
    processId = require"dap.utils".pick_process,
  },
}

dap.adapters.chrome = {
    type = "executable",
    command = "node",
    args = {os.getenv("HOME") .. "/vscode-chrome-debug/out/src/chromeDebug.js"}
}

dap.configurations.javascriptreact = { -- change this to javascript if needed
    {
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}",
    }
}

dap.configurations.typescriptreact = { -- change to typescript if needed
    {
        type = "chrome",
        request = "attach",
        program = "${file}",
        cwd = vim.fn.getcwd(),
        sourceMaps = true,
        protocol = "inspector",
        port = 9222,
        webRoot = "${workspaceFolder}",
    }
}

local dapui = require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  print("Opening DAP UI")
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

