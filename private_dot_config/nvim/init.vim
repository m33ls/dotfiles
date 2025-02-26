call plug#begin()

" List your plugins here
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

call plug#end()

set number
colorscheme catppuccin-mocha

lua <<EOF

require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,
      filetypes = {
        'rs','java',
  }},
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = { "c", "rust", "java", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
  highlight = {
    enable = true,
  },
}
EOF
