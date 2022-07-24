-- List of language servers: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pyright
-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local langservers = {
  'html',
  'cssls',
  'tsserver',
  'pylsp',
}

for _, server in ipairs(langservers) do
  require'lspconfig'[server].setup {
    capabilities = capabilities
  }
end

-- Rust
require'lspconfig'.rust_analyzer.setup({
  on_attach=on_attach,
      settings = {
          ["rust-analyzer"] = {
              assist = {
                  importGranularity = "module",
                  importPrefix = "self",
              },
              cargo = {
                  loadOutDirsFromCheck = true
              },
              procMacro = {
                  enable = true
              },
          }
      }
})

-- Lua
require'lspconfig'.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

local lspconfig = require'lspconfig'
local configs = require'lspconfig.configs'

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

if not configs.ls_emmet then
  configs.ls_emmet = {
    default_config = {
      cmd = { 'ls_emmet', '--stdio' };
      filetypes = {
        'html',
        'css',
        'scss',
        'javascript',
        'javascriptreact',
        'typescript',
        'typescriptreact',
        'haml',
        'xml',
        'xsl',
        'pug',
        'slim',
        'sass',
        'stylus',
        'less',
        'sss',
        'hbs',
        'handlebars',
      };
      root_dir = function(fname)
        return vim.loop.cwd()
      end;
      settings = {};
    };
  }
end

lspconfig.ls_emmet.setup { capabilities = capabilities }
