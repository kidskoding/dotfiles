return {
  "Pocco81/auto-save.nvim",
  lazy = false,
  config = function()
    require("auto-save").setup({
      enabled = false,
      execution_message = {
        message = function()
          return ""
        end,
      },
      events = { "InsertLeave", "TextChanged" },
      conditions = {
        exists = true,
        filetype_is_not = {},
        modifiable = true,
      },
    })
  end,
}
