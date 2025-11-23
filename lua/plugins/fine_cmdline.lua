-- In lua/config/plugins/fine_cmdline.lua (or similar path)
return {
  {
    "VonHeikemen/fine-cmdline.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
      require("fine-cmdline").setup({
        cmdline = {
          enable_keymaps = true,
          smart_history = true,
          prompt = ": "
        },
        popup = {
          position = { row = "10%", col = "50%" },
          size = { width = "60%" },
          border = { style = "rounded" },
          win_options = {
            winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
          },
        },
        hooks = {
          before_mount = function(input) end,
          after_mount = function(input)
            vim.keymap.set('i', '<Esc>', '<cmd>stopinsert<CR>', { buffer = input.bufnr })
          end,
          set_keymaps = nil,  -- Only needed if using Neovim <0.7
        },
      })
      -- Example keybinding to open fine-cmdline via Enter
      vim.keymap.set("n", "\\", "<cmd>FineCmdline<CR>", { noremap = true, silent = true })
    end,
  },
}

