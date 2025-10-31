return {
	"andweeb/presence.nvim",
	lazy = false,
  config = function()
		require("presence").setup({
      auto_update = true,
			neovim_image_text = "Neovim",
			main_image = "neovim",
			debounce_timeout = 10,
		})
	end
}
