local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

local lang = require("chriswrendev.plugins.lsp.lang")
local opts = require("chriswrendev.plugins.lsp.opts")

local servers = {
    dockerls = {},
    buf_ls = {},
    zls = {},
    ts_ls = lang.ts,
    gopls = lang.go,
    lua_ls = lang.lua,
    yamlls = lang.yaml,
    rust_analyzer = lang.rust,
    terraformls = { filetypes = { "terraform", "tf" } },
}

mason_lspconfig.setup({
    ensure_installed = vim.tbl_keys(servers),
})

mason_lspconfig.setup_handlers({
    function(server_name)
        lspconfig[server_name].setup({
            on_attach = opts.on_attach,
            capabilities = opts.capabilities,
            settings = servers[server_name],
            filetypes = (servers[server_name] or {}).filetypes,
        })
    end,
})

-- lspconfig.clangd.setup({
--     on_attach = opts.on_attach,
--     capabilities = opts.capabilities,
--     cmd = {
--         "clangd",
--         "--offset-encoding=utf-16",
--     },
-- })
