return
-- In your plugins list
{
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
        require("bufferline").setup({})
        local map = vim.keymap.set
        map('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', { desc = 'Next Buffer' })
        map('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', { desc = 'Prev Buffer' })
        map('n', '<leader>q', ':bdelete<CR>', { desc = 'Close current buffer' })
    end
}
