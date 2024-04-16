return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = false,
      auto_session_suppress_dirs = {
        "~/",
        "~/Dev/",
        "~/Downloads/",
        "~/Documents/",
        "~/Desktop/",
      },

      session_lens = {
        previewer = false,
      },
    })

    local lens = require("auto-session.session-lens")

    local keymap = vim.keymap

    keymap.set("n", "<Leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd." })
    keymap.set("n", "<Leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir." })
    keymap.set("n", "<Leader>wl", lens.search_session, { desc = "Open the auto-session lens." })
  end,
}
