return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  config = function()
    vim.opt.termguicolors = true
    require("bufferline").setup{
      options = {
        numbers =  "buffer_id",
        indicator = {
          style = 'underline'
        },
        show_close_icon = true,
        show_buffer_close_icons = true,
        show_bufer_icons = true,
        separator_style = "slope",
        always_show_bufferline = true,
        diagnostics = false,
        show_duplicate_prefix = true,
        sort_by = "id",

        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-Tree",
            text_align = "left",
            separator = true,
          }
        }
      }
    }
    vim.keymap.set('n', "<tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer"})
    vim.keymap.set('n', "<S-tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Prev Buffer"})
  end,
}
