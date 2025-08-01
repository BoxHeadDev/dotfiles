return {
    "saghen/blink.cmp",
    -- dependencies = {
    --     "giuxtaposition/blink-cmp-copilot",
    -- },
    version = "*",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
        cmdline = { enabled = false },
        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
            providers = {
                -- copilot = {
                --     name = "copilot",
                --     module = "blink-cmp-copilot",

                --     score_offset = 100,
                --     async = true,
                --     transform_items = function(_, items)
                --         local CompletionItemKind = require("blink.cmp.types").CompletionItemKind
                --         local kind_idx = #CompletionItemKind + 1
                --         CompletionItemKind[kind_idx] = "Copilot"
                --         for _, item in ipairs(items) do
                --             item.kind = kind_idx
                --         end
                --         return items
                --     end,
                -- },
            },
        },
        signature = {
            enabled = true,
            window = { border = "rounded" },
        },
        completion = {
            documentation = {
                auto_show = true,
                window = { border = "rounded" },
            },
            menu = { border = "rounded" },
        },
        appearance = {
            kind_icons = require("chriswrendev.utils.kinds").icons,
        },
    },
}
