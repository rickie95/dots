call plug#begin()
	Plug 'lervag/vimtex'
	Plug 'morhetz/gruvbox'
"	Plug 'neoclide/coc.nvim', {'branch' : 'release'} 
call plug#end()

if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

colorscheme gruvbox

"------------------------------
" General Settings
"------------------------------
filetype plugin indent on
syntax enable
set shiftwidth=4
set tabstop=4
set relativenumber
set number
set signcolumn=yes:2
set hidden
set listchars=tab:▸\ ,trail:·
set scrolloff=8
" ============================
" 			Keymaps
" ============================
let mapleader ="\<space>"

nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>
" Open the current file in the default program, according to MIME
nmap <F5> :!xdg-open %<cr><cr>

" ============================
" 			VimTex
" ============================
let g:vimtext_view_method = 'zathura'
let g:vimtex_compiler_method = 'latexrun'

