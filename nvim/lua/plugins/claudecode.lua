return {
  "coder/claudecode.nvim",
  dependencies = { "folke/snacks.nvim" },
  cmd = { "Claude", "ClaudeResume", "ClaudeContinue" },
  opts = {
    window = {
      position = "right",
      width = 0.4,
    },
  },
  config = function(_, opts)
    require("claudecode").setup(opts)
    vim.api.nvim_create_user_command("Claude", "ClaudeCode", { desc = "Toggle Claude Code" })
    vim.api.nvim_create_user_command("ClaudeResume", "ClaudeCode --resume", { desc = "Resume Claude session" })
    vim.api.nvim_create_user_command("ClaudeContinue", "ClaudeCode --continue", { desc = "Continue Claude session" })
  end,
  keys = {
    { "<leader>a", nil, desc = "AI/Claude Code" },
    { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Toggle Claude" },
    { "<leader>af", "<cmd>ClaudeCodeFocus<cr>", desc = "Focus Claude" },
    { "<leader>ar", "<cmd>ClaudeCode --resume<cr>", desc = "Resume Claude" },
    { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
    { "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select Claude model" },
    { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>", desc = "Add current buffer" },
    { "<leader>as", "<cmd>ClaudeCodeSend<cr>", mode = "v", desc = "Send to Claude" },
    {
      "<leader>as",
      "<cmd>ClaudeCodeTreeAdd<cr>",
      desc = "Add file",
      ft = { "NvimTree", "neo-tree", "oil", "minifiles", "netrw" },
    },
    -- Diff management
    { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
    { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>", desc = "Deny diff" },
  },
}
