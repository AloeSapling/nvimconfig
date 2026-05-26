return {
  {
    'pmizio/typescript-tools.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    opts = {
      settings = {
        tsserver_file_preferences = {
          includeCompletionsForModuleExports = true,
          includeCompletionsWithInsertText = true,
          includeAutomaticOptionalChainCompletions = true,
          includePackageJsonAutoImports = 'auto',
        },
      },
    },
  },
}
