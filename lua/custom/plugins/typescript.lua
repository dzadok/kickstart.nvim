return {
  'pmizio/typescript-tools.nvim',
  dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
  opts = {
    settings = {
      on_attach = function(client, bufnr)
        require('twoslash-queries').attach(client, bufnr)
      end,
      expose_as_code_action = { 'all' },
      tsserver_file_preferences = {
        includeCompletionsForModuleExports = true,
        includeCompletionsForImportStatements = true,
        includeCompletionsWithInsertText = true,
        includeInlayParameterNameHints = 'all',
        includeInlayFunctionParameterTypeHints = true,
      },
      handlers = {
        ['textDocument/publishDiagnostics'] = function()
          require('typescript-tools').api.filter_diagnostics { 80004 }
        end,
      },
    },
  },
}
