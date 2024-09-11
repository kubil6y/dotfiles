local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    --"tsserver",
})

-- Fix Undefined global 'vim'
lsp.configure("lua-language-server", {
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim" },
            },
        },
    },
})

local kind_icons = {
    Text = "",
    Method = "m",
    Function = "",
    Constructor = "",
    Field = "",
    Variable = "",
    Class = "",
    Interface = "",
    Module = "",
    Property = "",
    Unit = "",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "",
    Event = "",
    Operator = "",
    TypeParameter = "",
}

local cmp = require("cmp")
local cmp_mappings = lsp.defaults.cmp_mappings({
    ["<C-d>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({
        behavior = cmp.ConfirmBehavior.Replace,
        select = true,
    }),
    ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.select_next_item()
        else
            fallback()
        end
    end, { "i", "s" }),
    ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.select_prev_item()
        else
            fallback()
        end
    end, { "i", "s" }),
})
cmp_mappings["<C-u>"] = nil -- important!

local cmp_formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
        -- Kind icons
        vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
        vim_item.menu = ({
            nvim_lsp = "[LSP]",
            luasnip = "[Snippet]",
            buffer = "[Buffer]",
            path = "[Path]",
        })[entry.source.name]
        vim_item.abbr = string.sub(vim_item.abbr, 1, 30)
        return vim_item
    end,
}

local cmp_sources = {
    { name = "path" },
    { name = "nvim_lsp" },
    { name = "nvim_lsp_signature_help" },
    { name = "buffer",                 keyword_length = 3 },
    { name = "luasnip",                keyword_length = 2 },
}

lsp.setup_nvim_cmp({
    preselect = "none",
    completion = {
        completeopt = "menu,menuone,noinsert,noselect",
    },
    mapping = cmp_mappings,
    formatting = cmp_formatting,
    sources = cmp_sources,
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = "E",
        warn = "W",
        hint = "H",
        info = "I",
    },
})

-- removed tsserver
local overridenFormattingSources = { "jsonls", "html", "prisma" }

lsp.on_attach(function(client, bufnr)
    for _, src in ipairs(overridenFormattingSources) do
        if client.name == src then
            client.server_capabilities.document_formatting = false
        end
    end

    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, opts)
    vim.keymap.set("n", "<leader>dt", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "<leader>dl", vim.diagnostic.setloclist, opts)
    vim.keymap.set("n", "[g", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "]g", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "<A-.>", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>rf", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
end)

local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.black,
        --null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.formatting.prettier.with({
            extra_args = function(params)
                if params.ft == "markdown" then
                    return { "--tab-width", "2" }
                else
                    return { "--tab-width", "4" }
                end
            end,
        }),
    },
})

--local rust_lsp = lsp.build_options("rust_analyzer", {})
--local rust_opts = {
    --tools = {
        --inlay_hints = {
            ---- automatically set inlay hints (type hints)
            ---- default: true
            --auto = true,
            ---- Only show inlay hints for the current line
            --only_current_line = false,
            ---- whether to show parameter hints with the inlay hints or not
            ---- default: true
            --show_parameter_hints = false,
            ---- prefix for parameter hints
            ---- default: "<-"
            --parameter_hints_prefix = "<- ",
            ---- prefix for all the other hints (type, chaining)
            ---- default: "=>"
            --other_hints_prefix = "=> ",
            ---- whether to align to the length of the longest line in the file
            --max_len_align = false,
            ---- padding from the left if max_len_align is true
            --max_len_align_padding = 1,
            ---- whether to align to the extreme right or not
            --right_align = false,
            ---- padding from the right if right_align is true
            --right_align_padding = 7,
            ---- The color of the hints (Comment,hl_inlay_hints)
            --highlight = "hl_inlay_hints",
        --},
    --},
    --server = rust_lsp, -- rust-analyzer options
--}

lsp.setup()
--require("rust-tools").setup(rust_opts)

local show_virtual_text = true
vim.diagnostic.config({
    virtual_text = show_virtual_text,
})

function toggle_virtual_text()
    show_virtual_text = not show_virtual_text
    vim.diagnostic.config({
        virtual_text = show_virtual_text,
    })
end

local diagnostics_active = true
vim.keymap.set("n", "<leader>tt", function()
    toggle_virtual_text()
end)
