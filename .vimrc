set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

 Plugin 'gmarik/Vundle.vim'
 Plugin 'tpope/vim-pathogen'
 Plugin 'hynek/vim-python-pep8-indent'
 Plugin 'scrooloose/nerdtree'
 Plugin 'davidhalter/jedi-vim'
 Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
 Plugin 'altercation/vim-colors-solarized'
 Plugin 'farseer90718/flattr.vim'

 " All of your Plugins must be added before the following line
call vundle#end()            " required

execute pathogen#infect()
syntax on
filetype indent plugin on

set autoread

"colorsi
set  t_Co=256
syntax enable
set background=dark
colorscheme flattr

" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch
" For regular expressions turn magic on
set magic
" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Linebreak on 500 characters
set lbr
set tw=500

set wrap 

"nerd tree open
map <C-n> :NERDTreeToggle<CR>
map <F3> <C-W>w 

map <F10> :sh<CR>

autocmd FileType python set omnifunc=pythoncomplete#Complete

set laststatus=2
