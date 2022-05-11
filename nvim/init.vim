" Options
:set number
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a
:set cursorline
:set ignorecase
:set nowrap
:set encoding=utf-8
:set hidden
:set nobackup
:set nowritebackup
:set cmdheight=1
:set updatetime=300
:language en_US

" Plugins
call plug#begin()
  " Appearance
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'overcache/NeoSolarized'

  " Completion / linters / formatters
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
call plug#end()

" Lualine
lua << END
  require('lualine').setup{
    options = {
      icons_enabled = true,
      theme = 'auto',
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {},
      always_divide_middle = true,
      globalstatus = false,
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'branch', 'diff', 'diagnostics'},
      lualine_c = {'filename'},
      lualine_x = {'encoding', 'fileformat', 'filetype'},
      lualine_y = {'progress'},
      lualine_z = {'location'}
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    extensions = {}
  }
END

" Treesitter
lua <<EOF
  require'nvim-treesitter.configs'.setup {
    ensure_installed = { 
      "c", -- Need to install parsers via c
      "cpp", -- Need to install parsers via cpp
      "bash",
      "css",
      "graphql",
      "html",
      "javascript",
      "jsdoc",
      "json",
      "lua",
      "markdown",
      "scss",
      "svelte",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vue",
      "yaml"
    },
    highlight = { 
      enable = true,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enabled = true,
    },
  }

  local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
  parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
EOF

" NeoSolarized Colorscheme
if exists("&termguicolors")
  set termguicolors
  set background=dark
  syntax enable
  let g:neosolarized_termtrans=1 " transparent background
  colorscheme NeoSolarized " put configuration before colorscheme
endif

" Format on save
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
