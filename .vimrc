" Auto install vim-plug

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/pluginnnn')

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'tpope/vim-surround'

call plug#end()

set nu
set ai
set tabstop=4
set shiftwidth=4
set ic
set incsearch

set laststatus=2
set t_Co=256
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
