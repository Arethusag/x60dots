" Set colorcheme
colorscheme desert

" Enable line numbers
set number

" Enable syntax highlighting
syntax enable

" Set indent to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Enable optional comment plugin, uses 'gc' as binding
packadd comment

" Enable mouse mode
set mouse=a

" Set indent style
set cindent

let &t_SI = "\e[5 q"      " Vertical line cursor in insert mode
let &t_SR = "\e[4 q"      " Underscore cursor in replace mode
let &t_EI = "\e[2 q"      " Block cursor in normal mode

" System tags location, see :help ctags
set tags+=~/.vim/systags

" Setup omnicomplete for c files, CTRL+X CTRL+O
autocmd FileType c setlocal omnifunc=ccomplete#Complete

" Auto update tags
nnoremap <leader>ut :!ctags -R .<CR>

" Remap < and > to retain visual selection after indenting/unindenting
vnoremap < <gv
vnoremap > >gv

" Enable folding based on syntax
set foldmethod=syntax

" Set no expandtab for makefiles
augroup Makefiles
    autocmd! * <buffer>
    autocmd BufNewFile,BufRead Makefile setlocal noexpandtab
augroup END
