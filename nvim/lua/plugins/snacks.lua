return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    notifier = { enabled = true },
    scroll = { enabled = true },
    words = { enabled = true },
    lazygit = { enabled = true },
    terminal = { enabled = false },
    zen = { enabled = true },
    gitbrowse = { enabled = true },
    bufdelete = { enabled = true },
    toggle = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    quickfile = { enabled = true },
    statuscolumn = { enabled = true },
    scope = { enabled = true },
    scratch = { enabled = true },
    dim = { enabled = true },
  },
  keys = {
    -- lazygit
    { "<leader>gg", function() Snacks.lazygit() end, desc = "Lazygit" },
    -- terminal
    { "<C-t>", function() Snacks.terminal() end, desc = "Toggle Terminal", mode = { "n", "t" } },
    -- git browse (open file on GitHub/GitLab)
    { "<leader>gB", function() Snacks.gitbrowse() end, desc = "Git Browse" },
    -- zen mode
    { "<leader>z", function() Snacks.zen() end, desc = "Zen Mode" },
    -- notifications
    { "<leader>nd", function() Snacks.notifier.hide() end, desc = "Dismiss Notifications" },
    { "<leader>nh", function() Snacks.notifier.show_history() end, desc = "Notification History" },
    -- words: navigate between references
    { "]]", function() Snacks.words.jump(1) end, desc = "Next Reference" },
    { "[[", function() Snacks.words.jump(-1) end, desc = "Prev Reference" },
    -- toggles
    { "<leader>ts", function() Snacks.toggle.option("spell") end, desc = "Toggle Spell" },
    { "<leader>tw", function() Snacks.toggle.option("wrap") end, desc = "Toggle Wrap" },
    { "<leader>tn", function() Snacks.toggle.option("relativenumber") end, desc = "Toggle Relative Number" },
    { "<leader>ti", function() Snacks.toggle.inlay_hints() end, desc = "Toggle Inlay Hints" },
    -- scratch buffer
    { "<leader>S", function() Snacks.scratch() end, desc = "Scratch Buffer" },
    -- dim
    { "<leader>td", function() Snacks.dim() end, desc = "Toggle Dim" },
  },
}
