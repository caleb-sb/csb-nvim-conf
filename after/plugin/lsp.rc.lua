local status, lsp = pcall(require, "lsp-zero")
if (not status) then
   print "lsp-zero is not installed"
   return
end
lsp.preset("recommended")

lsp.ensure_installed({
   "tsserver",
   "volar",
   "tailwindcss",
   "sumneko_lua",
   "gopls",
   "jsonls"
})

lsp.set_preferences({
   sign_icons = {}
})

lsp.on_attach(function (_, bufnr)
   local opts = { buffer = bufnr, remap = false }

   vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
   vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
   vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
   vim.keymap.set("n", "]d", function() vim.diagnostic.goto_next() end, opts)
   vim.keymap.set("n", "[d", function() vim.diagnostic.goto_prev() end, opts)
   vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)

   vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
   vim.keymap.set("n", "<leader>rr", function() vim.lsp.buf.references() end, opts)
end)

local cmp = require("cmp")
local cmp_mappings = lsp.defaults.cmp_mappings({
   ["<C-Space>"] = cmp.mapping.complete(),
   ["<C-e>"] = cmp.mapping.abort(),
   ["<Tab>"] = cmp.mapping.confirm({ select = true })
})

cmp_mappings["<CR>"] = nil

lsp.setup_nvim_cmp({
   mapping = cmp_mappings
})
lsp.setup()


