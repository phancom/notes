set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" Extension for code folding
Plugin 'tmhedberg/SimpylFold'

" Correct auto indentation
Plugin 'vim-scripts/indentpython.vim'

" Auto-Complete!
Plugin 'Valloric/YouCompleteMe'

"Powerline, config https://powerline.readthedocs.io/en/latest/ 
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"split navigations, ctrl+JKLH to move between split screen
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding, fold by typing za
set foldmethod=indent
set foldlevel=99

" PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"flag extra whitespaces
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

"set UTF-8 support
set encoding=utf-8

"first line ensures that the auto-complete window goes away when you’re done with it
"second defines a shortcut for goto definition 
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" code look pretty?
let python_highlight_all=1
syntax on

"turn on line numbering
set nu


