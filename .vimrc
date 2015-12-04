set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'itchyny/lightline.vim'

Plugin 'mattn/webapi-vim'
Plugin 'mattn/emmet-vim'

Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'tpope/vim-fugitive'
Plugin 'elixir-lang/vim-elixir'
Plugin 'mattreduce/vim-mix'
Plugin 'jimenezrick/vimerl'
Plugin 'edkolev/erlang-motions.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'moll/vim-node.git'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-bundler.git'
Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"ERlang Config
au BufNewFile,BufRead *.erl,*.es,*.hrl,*.yaws,*.xrl setf erlang

let g:erlangHighlightBif=1
let g:erlangCompletionDisplayDoc=1
let g:erlangCheckFile="/Users/Anuj/.vim/bundle/syntastic/syntax_checkers/erlang/erlang_check_file.erl"
let g:erlangWranglerPath="/usr/local/lib/erlang/lib/wrangler-1.1.01/"

let g:neocomplcache_enable_at_startup = 1
let g:solarized_termcolors=256

let mapleader = "\\"

syntax enable
set background=dark
colorscheme solarized

set expandtab " Spaces for tabs "
set tabstop=4 " Tab width 4 "
set shiftwidth=4
set softtabstop=4
set smarttab
set shiftround

set number
set numberwidth=5
set noswapfile
set ruler
set autowriteall
set list listchars=tab:»·,trail:·,nbsp:·


map <C-n> :NERDTreeToggle<CR>

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif




