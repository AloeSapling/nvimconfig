require('mason').setup()

require('mason-lspconfig').setup {
  ensure_installed = {
    'omnisharp',
    'clangd',
    'clang-formatter',
    'codelldb',
  },
}

local lspconfig = require 'lspconfig'

lspconfig.omnisharp.setup {
  cmd = { 'omnisharp' },
  enable_roslyn_analyzers = true,
  organize_imports_on_format = true,
  enable_import_completion = true,
}
return {}
