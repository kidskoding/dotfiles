return {
  "kidskoding/pale-fire.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("pale-fire.setup").setup()
    
    if pcall(require, "base46") then
      require("base46").load_all_highlights()
    end
  end,
}
