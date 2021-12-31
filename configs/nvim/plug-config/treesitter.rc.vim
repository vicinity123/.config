" Source link
" https://github.com/craftzdog/dotfiles-public/blob/master/.config/nvim/after/plugin/treesitter.rc.vim

if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "json",
    "html",
    "scss"
    "css",
    "javascript",
    "typescript",
    "python",
    "vim"
  },
}
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

EOF

