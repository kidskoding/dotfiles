return {
    'Pocco81/auto-save.nvim',
    lazy = false,
	config = function()
        require('auto-save').setup({
            enabled = false,  -- Auto-save is enabled by default
            execution_message = {
                message = function()
                    return ""  -- Disable the "Saved" message
                end,
            },
            events = { "InsertLeave", "TextChanged" },  -- Save on these events
            conditions = {
                exists = true,
                filetype_is_not = {},  -- Enable for all file types
                modifiable = true,
            },
        })
    end,
}
