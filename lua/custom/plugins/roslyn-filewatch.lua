return {
  'khoido2003/roslyn-filewatch.nvim',
  build = 'nvim -l build.lua --',
  config = function()
    require('roslyn_filewatch').setup {
      client_names = { 'roslyn' }, -- ← Most important for seblyng/roslyn.nvim

      preset = 'auto',
      solution_aware = true,
      respect_gitignore = true,

      ignore_dirs = {
        'bin',
        'obj',
        'Library',
        'Temp',
        '.git',
        '.vs',
        'node_modules',
        'packages',
        '.idea',
      },

      diagnostic_throttling = { enabled = true, debounce_ms = 300 },
      processing_debounce_ms = 150,
      enable_autorestore = true, -- Helps with unresolved dependencies
    }
  end,
}
