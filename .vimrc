if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'kaicataldo/material.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/fzf.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-vinegar'

call plug#end()

set nocp
set exrc
set rtp+=/usr/local/opt/fzf
set clipboard=unnamed
set nu
set termguicolors
set background=dark
set expandtab tabstop=4 shiftwidth=4
set mouse=a
set statusline=%{expand('%:~:.')}[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set laststatus=2
set completeopt=longest,menuone

let mapleader = ','

colorscheme material

" fzf, ripgrep
nnoremap <C-f> :Files<Cr>
" Ignore searching file names for Rg
command! -bang -nargs=* Rg
            \ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>),
            \ 1,
            \ {'options': '--delimiter : --nth 4..'},
            \ <bang>0)
nnoremap <C-g> :Rg<Cr>
let g:fzf_history_dir = '~/.local/share/fzf-history'
set grepprg=rg\ --vimgrep

"EditorConfig
let g:EditorConfig_exclude_patterns = ['fugitive://.*']

set secure
