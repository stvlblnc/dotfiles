return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    on_attach = function(bufnr)
      local gs = require("gitsigns")

      local function map(mode, l, r, desc)
        vim.keymap.set(mode, l, r, { buffer = bufnr, desc = desc })
      end

      -- Navigation
      map("n", "]h", gs.next_hunk, "Next hunk")
      map("n", "[h", gs.prev_hunk, "Previous hunk")

      -- -- Actions
      -- map("n", "<Leader>hs", gs.stage_hunk, "Stage hunk")
      -- map("n", "<Leader>hr", gs.reset_hunk, "Reset hunk")
      -- map("v", "<Leader>hs", function()
      --   gs.stage_junk({ vim.fn.line("."), vim.fn.line("v") })
      -- end, "Stage hunk")
      -- map("v", "<Leader>hr", function()
      --   gs.reset_junk({ vim.fn.line("."), vim.fn.line("v") })
      -- end, "Stage hunk")
      --
      -- map("n", "<Leader>hS", gs.stage_buffer, "Stage buffer")
      -- map("n", "<Leader>hR", gs.reset_buffer, "Reset buffer")
      --
      -- map("n", "<leader>hu", gs.undo_stage_hunk, "Undo stage hunk")
      --
      -- map("n", "<leader>hp", gs.preview_hunk, "Preview hunk")
      --
      -- map("n", "<leader>hb", function()
      --   gs.blame_line({ full = true })
      -- end, "Blame line")
      -- map("n", "<leader>hB", gs.toggle_current_line_blame, "Toggle line blame")
      --
      -- map("n", "<leader>hd", gs.diffthis, "Diff this")
      -- map("n", "<leader>hD", function()
      --   gs.diffthis("~")
      -- end, "Diff this ~")
      --
      -- -- Text object
      -- map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Gitsigns select hunk"),
    end,
  },
}
