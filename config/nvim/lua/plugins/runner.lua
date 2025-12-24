return {
  "CRAG666/code_runner.nvim",
  config = function()
    local Terminal = require("toggleterm.terminal").Terminal

    local code_runner_term = Terminal:new({
      direction = "vertical",
      float_opts = {
        border = "curved",
        width = 80,
        height = 20,
      },
      on_open = function(term)
        vim.cmd("startinsert!")
      end,
      close_on_exit = true,
    })

    local function run_code()
      local ft = vim.bo.filetype
      local file = vim.fn.expand("%")
      local dir = vim.fn.expand("%:p:h")
      local filename_without_ext = vim.fn.expand("%:t:r")

      local cmd = ""

      if ft == "python" then
        cmd = "cd " .. dir .. " && python3 -u " .. file
      elseif ft == "cpp" then
        cmd = "cd " .. dir .. " && clang++ " .. file .. " -o ./a.out && ./a.out"
      elseif ft == "c" then
        cmd = "cd " .. dir .. " && clang " .. file .. " -o ./a.out && ./a.out"
      elseif ft == "rust" then
        cmd = "cd " .. dir .. " && rustc " .. file .. " && ./" .. filename_without_ext
      elseif ft == "java" then
        cmd = "cd " .. dir .. " && javac " .. file .. " && java " .. filename_without_ext
      elseif ft == "typescript" then
        cmd = "cd " .. dir .. " && deno run " .. file
      else
        print("Filetype not supported: " .. ft)
        return
      end

      code_runner_term:open()
      -- ✅ Send command without showing it twice
      code_runner_term:send("clear && " .. cmd)
    end

    vim.keymap.set("n", "<leader>r", run_code, { desc = "Run code in toggleterm float" })
  end,
}
