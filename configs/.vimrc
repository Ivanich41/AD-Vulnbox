if empty(glob("~/.vim/autoload/plug.vim"))
    call mkdir(stdpath('config'), 'p')
    exe 'edit '.stdpath('config').'/init.vim'
    set runtimepath^=~/.vim runtimepath+=~/.vim/after
    let &packpath = &runtimepath

    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif


syntax on
set clipboard=unnamedplus
set number
highlight LineNr ctermfg=grey
set signcolumn=yes
highlight clear SignColumn
set encoding=UTF-8
set mouse=a

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline-themes'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-bufferline'
Plug 'mhartington/oceanic-next'
Plug 'tpope/vim-commentary'

call plug#end()


colorscheme OceanicNext
let g:airline_theme='dark'
nnoremap <C-t> :NERDTreeToggle <CR>
