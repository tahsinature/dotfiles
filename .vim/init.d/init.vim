" Copyright (c) 2020 Ramdhan Firmansyah
" File              : init.vim
" Author            : Cvar1984 <gedzsarjuncomuniti@gmail.com>
" Date              : 25.06.2020
" Last Modified Date: 29.06.2020
" Last Modified By  : Cvar1984 <gedzsarjuncomuniti@gmail.com>

let vimplug_exists=expand('~/.vim/autoload/plug.vim')

if !filereadable(vimplug_exists)
  if !executable("curl")
    echoerr "You have to install curl or first install vim-plug yourself!"
    execute "q!"
  endif
  echo "Installing Vim-Plug..."
  echo ""
  silent exec "!\curl -fLo " . vimplug_exists . " --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  let g:not_finish_vimplug = "yes"
  autocmd VimEnter * PlugInstall
endif
call plug#begin(expand('~/storage/external-1/nvim/plugged'))

" Plug 'scrooloose/nerdtree'
" Plug 'jistr/vim-nerdtree-tabs'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'vim-scripts/grep.vim'
" Plug 'vim-scripts/CSApprox'
" Plug 'Raimondi/delimitMate'
" Plug 'majutsushi/tagbar'
" Plug 'avelino/vim-bootstrap-updater'
" Plug 'sheerun/vim-polyglot'
" Plug 'mattn/emmet-vim'
" Plug 'tpope/vim-fugitive'
" Plug 'scrooloose/syntastic'
" Plug 'shougo/neco-vim'
" Plug 'prabirshrestha/asyncomplete.vim'
" Plug 'prabirshrestha/async.vim'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'prabirshrestha/asyncomplete-lsp.vim'
" Plug 'prabirshrestha/asyncomplete-necovim.vim'
" Plug 'felixfbecker/php-language-server', { 'do': 'composer install && composer run-script parse-stubs' }
" Plug 'vim-scripts/taglist.vim' BUG

Plug 'dense-analysis/ale'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/loremipsum'
Plug 'maximbaz/lightline-ale'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'alpertuna/vim-header'
Plug 'editorconfig/editorconfig-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'connorholyday/vim-snazzy'
Plug 'lumiliet/vim-twig'
Plug 'othree/html5.vim'
Plug 'tobyS/pdv'
Plug 'tobyS/vmustache'
call plug#end()

colorscheme snazzy
set mouse=a
map <ScrollWheelUp> <C-Y>
imap <ScrollWheelUp> <C-X><C-Y>
map <ScrollWheelDown> <C-E>
imap <ScrollWheelDown> <C-X><C-E>
nnoremap tt :tabnew<CR>
nnoremap tc :tabclose<CR>
nnoremap tn :tabnext<CR>
nnoremap tp :tabprev<CR>
"set cursorline
set guifont=Monospace\ 10
set fillchars+=vert:\$
syntax enable

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
