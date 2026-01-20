return {
  {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
    opts = {
      ensure_installed = {
        "lua-language-server",
        "pyright",
        "rust-analyzer",
        "clangd",
        "gopls",
        "jdtls",
        "html-lsp",
        "css-lsp",
        "fish-lsp",

        -- formatters
        "stylua",
        "black",
        "prettier",
      },
    },

    config = function(_, opts)
      require("mason").setup(opts)
      vim.api.nvim_create_user_command("MasonInstallAll", function()
        if opts.ensure_installed and #opts.ensure_installed > 0 then
          vim.cmd("MasonInstall " .. table.concat(opts.ensure_installed, " "))
        end
      end, {})
    end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    event = "User FilePost",
    opts = {
      automatic_installation = true,
    },
  },
}
