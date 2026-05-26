return {
  'seblyng/roslyn.nvim',
  opts = {
    filewatching = 'off',
    config = {
      capabilities = {
        workspace = {
          didChangeWatchedFiles = {
            dynamicRegistration = true,
          },
        },
      },
      settings = {
        ['csharp|completion'] = {
          dotnet_show_completion_items_from_unimported_namespaces = true,
        },
      },
    },
  },
}
