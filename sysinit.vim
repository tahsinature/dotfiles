let g:vim_plug_file = get(g:, 'vim_plug_file', expand("~/.vim/autoload/plug.vim"))

if (!filereadable(g:vim_plug_file))
  if !executable("curl")
    echoerr "curl is not installed"
    echoerr "Install it before and re-open"
  else
    call system("curl -fLo " . g:vim_plug_file . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")
  endif
endif
call plug#begin('~/.vim/plugged')
" ==== PLUGINS ====
Plug 'VundleVim/Vundle.vim'
Plug 'vim-scripts/L9'
Plug 'tpope/vim-fugitive'
"Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
"Plug 'kien/ctrlp.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'antoyo/vim-licenses'
"Plug 'mhinz/vim-startify'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/vim-xxdcursor'
Plug 'jiangmiao/auto-pairs'
" ==== PLUGIN THEMES ====
"Plug 'morhetz/gruvbox'
"Plug 'dracula/vim'
Plug 'flazz/vim-colorschemes'
"Plug 'rafi/awesome-vim-colorschemes'
"Plug 'tomasr/molokai'
"Plug 'srcery-colors/srcery-vim'
"Plug 'modess/vim-phpcolors'
" ==== END PLUGIN THEMES ====

" ==== PLUGIN SYNTAXES ====
Plug 'othree/yajs.vim'
Plug 'mitsuhiko/vim-jinja'
Plug 'nelsyeung/twig.vim'
" === END PLUGIN SYNTAXES ====

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
" ==== END PLUGINS ====
call plug#end()
set nocompatible              " be iMproved, required
filetype off                  " required
set exrc
filetype plugin indent on
silent! colorscheme Benokai
set guifont=Monospace\ 10
set fillchars+=vert:\$
syntax enable
set background=dark
set ruler
set number
set laststatus=2
set smartindent
set sw=4 et
set shiftwidth=4
set tabstop=4
set softtabstop=0
set expandtab

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"" hidden  buffer
set hidden

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set fileformats=unix,dos,mac

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/sh
endif

:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
":set lines=999 columns=999
" ==== EMMET =======
let g:user_emmet_leader_key='<C-E>'
" ==== NERDTREE ====
let NERDTreeIgnore = ['\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '[a-zA-Z]*cache[a-zA-Z]*']
let NERDTreeShowHidden=0
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
let mapleader = " "
map <C-t> :NERDTreeToggle<CR>
"" fuzzy
nnoremap gf  :Files<CR>
"" tab
nnoremap gt  :tabnew<CR>
nnoremap gc  :tabclose<CR>
nnoremap gn  :tabnext<CR>
nnoremap gb  :tabprev<CR>

" ===== CtrlP =====
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'
" ==== Syntastic ====
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_mri_args = "--config=$HOME/.jshintrc"
let g:syntastic_python_checkers = [ 'pylint', 'flake8', 'pep8', 'pyflakes', 'python']
let g:syntastic_yaml_checkers = ['jsyaml']
let g:syntastic_html_tidy_exec = 'tidy5'

" === flake8 ====
let g:flake8_show_in_file=1
" ==== Snips ====
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ==== Easymotion ====
"let g:EasyMotion_do_mapping = 0
"let g:EasyMotion_smartcase = 1
"nmap f <Plug>(easymotion-s)

" vim-airline
let g:airline_theme = 'simple'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
set secure
"====== DEOPLETE =======
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#manual_complete()
