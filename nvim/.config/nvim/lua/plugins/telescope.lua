return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<C-p>", builtin.find_files, {})
    vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
    vim.keymap.set("n", "<S-h>", function()
      require("telescope.builtin").buffers(require("telescope.themes").get_ivy({
        sort_mru = true,
        -- -- Sorts current and last buffer to the top and selects the lastused (default: false)
        -- -- Leave this at false, otherwise when put in normal mode, the buffer
        -- -- below is selected, not the one at the top
        sort_lastused = false,
        initial_mode = "normal",
        -- Pre-select the current buffer
        -- ignore_current_buffer = false,
        -- select_current = true,
        layout_config = {
          -- Set preview width, 0.7 sets it to 70% of the window width
          preview_width = 0.45,
        },
      }))
    end, { desc = "[P]Open telescope buffers" })
  end,
}
