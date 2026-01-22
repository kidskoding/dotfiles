-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

-- EXAMPLE
local servers = { "html", "cssls", "pyright", "clangd", "gopls", "jdtls" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
  vim.lsp.enable(lsp)
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

vim.lsp.config("rust_analyzer", {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
      check = {
        command = "clippy",
      },
      assist = {
        importGranularity = "module",
        importPrefix = "by_self",
      },
      diagnostics = {
        enable = true,
        disabled = { "unresolved-proc-macro" },
        enableExperimental = true,
      },
    },
  },
})
vim.lsp.enable("rust_analyzer")

vim.lsp.config("lua_ls", {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})
vim.lsp.enable("lua_ls")

vim.lsp.config("texlab", {
  on_attach = nvlsp.on_attach,
  on_init = nvlsp.on_init,
  capabilities = nvlsp.capabilities,
  settings = {
    texlab = {
      build = {
        onSave = true,
        executable = "latexmk",
        args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "-outdir=build", "%f" },
      },
      forwardSearch = {
        executable = "zathura",
        args = { "--remote-expr", "node#%line", "%p" },
      },
      chktex = {
        onOpenAndSave = true,
      },
      diagnosticsDelay = 300,
    },
  },
})
