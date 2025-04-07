-- core/lsp.lua

-- 1. Setup mason and mason-lspconfig
require("mason").setup()
require("typescript-tools").setup({})
require("mason-lspconfig").setup {
  ensure_installed = { "lua_ls", "pyright", "html", "cssls" }, -- Add more as needed
}

-- 2. Setup LSP servers
local lspconfig = require("lspconfig")

-- Add capabilities for nvim-cmp
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Example server configs
local servers = { "lua_ls", "pyright", "html", "cssls" }

for _, server in ipairs(servers) do
  lspconfig[server].setup {
    capabilities = capabilities,
  }
end

