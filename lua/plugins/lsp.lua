return {
         excludeLanguages = {"javascript", "typescriptreact"},
   "neovim/nvim-lspconfig",
   dependencies = {
      "williamboman/mason.nvim",
      "folke/neodev.nvim",
   },

   config = function()
      -- See `:help vim.diagnostic.*` for documentation on any of the below functions
      vim.keymap.set('n', '<space>e', vim.diagnostic.open_float)
      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
      vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
      vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)


      --Change diagnostic symbols in the sign column (gutter)
      local signs = { Error = "", Warn = "", Hint = "", Info = "" }
      for type, icon in pairs(signs) do
         local hl = "DiagnosticSign" .. type
         vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
      end


      local on_attach = function(_, bufnr)
         print("LSP started."); -- agregado ultimo
         -- See `:help vim.lsp.*` for documentation on any of the below functions
         local opts = { buffer = bufnr }
         vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
         vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
         vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
         vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
         vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
         vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
         vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
         vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
         end, opts)
         vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
         vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
         vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
         vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
         vim.keymap.set('n', '<space>f', function()
         vim.lsp.buf.format { async = true }
         end, opts)
      end


      require("neodev").setup()
      -- agregar aca mas servidores para otro lenguake agregando la misma linea pero cambiando lua_ls
      require("lspconfig").lua_ls.setup({
         on_attach = on_attach,
         settings = {
            Lua = {
               telemetry = { enable = false },
               workspace = { checkThirdParty = false },
            }
         }
      })

      require("lspconfig").clangd.setup({
         on_attach = on_attach,
      })

      require("lspconfig").jdtls.setup({
         on_attach = on_attach,
		 cmd = {'jdtls',
		 "--jvm-arg=" .. string.format("-javaagent:%s", vim.fn.expand "$MASON/share/jdtls/lombok.jar"),
			--	'-javaagent:$HOME/.local/share/nvim/mason/share/jdtls/lombok.jar'
			}
      })

      require("lspconfig").tsserver.setup({
         on_attach = on_attach,
      })

      --Enable (broadcasting) snippet capability for completion
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.completion.completionItem.snippetSupport = true

      require("lspconfig").cssls.setup({
         on_attach = on_attach,
         capabilities = capabilities,
      })

      require("lspconfig").emmet_language_server.setup({
         on_attach = on_attach,
         filetypes = { "eruby", "html", "sass", "pug"},
         init_options = {
            excludeLanguages = {"javascript", "typescriptreact"},
            preferences = {"https://docs.emmet.io/customization/preferences/"},
            showAbbreviationSuggestions = true,
            showExpandedAbbreviation = "always",
            showSuggestionsAsSnippets = false,
            syntaxProfiles = {"https://docs.emmet.io/customization/syntax-profiles/"},
            variables = {"https://docs.emmet.io/customization/snippets/#variables"},

         }
      })
   end
}
