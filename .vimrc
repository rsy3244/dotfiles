colorscheme molokai
set number
set autoindent
set smartindent
set shiftwidth=4
set tabstop=4
set hlsearch
set backspace=indent,eol,start

set backup
set backupdir=~/.vim/backupfiles
set swapfile
set directory=~/.vim/swapfiles
set undofile
set undodir=~/.vim/undofiles

autocmd BufWinLeave ?* silent mkview
autocmd BufWinEnter ?* silent loadview

autocmd BufNewFile *.c 0r ~/.vim/template/c.txt
autocmd BufNewFile *.cpp 0r ~/.vim/template/cpp.txt
autocmd BufNewFile *.rs 0r ~/.vim/template/rs.txt
autocmd BufNewFile .{?\\\{3\}}\@3<!.tex\_$ 0r ~/.vim/template/tex.txt
autocmd BufNewFile *.sld.tex 0r ~/.vim/template/slide.txt
autocmd BufNewFile *.prt.tex 0r ~/.vim/template/tex_part.txt

let mapleader = "\\"
let maplocalleader = "\\"

noremap <leader>t :NERDTreeTabsToggle<CR>

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'lervag/vimtex'
Plug 'scrooloose/nerdtree'
Plug 'posva/vim-vue'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'rust-lang/rust.vim'
Plug 'qnighy/satysfi.vim'
call plug#end()
syntax on

"vimtex configure
let g:vimtex_compiler_latexmk={
	\ 'background': 1,
	\ 'build_dir': 'build',
	\ 'continuous': 1,
	\ 'options': [
	\	'-gg',
	\	'-pdfdvi',
	\	'-verbose',
	\	'-file-line-error',
	\	'-synctex=1',
	\	'-interaction=nonstopmode',
	\	
	\],
	\}
let g:vimtex_view_method='skim'
let g:vimtex_view_automatic=1 

let NERDTreeIgnore = ['\.fls$', '\.dvi', '\.aux', '\.fdb_latexmk', '\.nav', '\.snm', '\.synctex.gz', '\.toc']
let g:tex_flavor = "latex"

"rust.vim configure
let g:rustfmt_autosave = 1


filetype plugin indent on
