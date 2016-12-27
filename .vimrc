runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

"colors
set t_Co=256
set termguicolors
set background=light
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
colorscheme solarized

set noswapfile
set exrc

set ttyfast
set mouse=a
if !has('nvim')
    set ttymouse=xterm2
endif
set colorcolumn=80

set expandtab
set tabstop=8
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set shiftround

set ignorecase
set smartcase
set hlsearch

set showmatch
set showmode
set showcmd

set scrolloff=1
set lazyredraw
set history=200
set linebreak
set ruler
set laststatus=2
set statusline=%f       "file path
set statusline+=%m      "modified flag
set statusline+=%r      "readonly flag
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

set wildmenu
set wildmode=longest:full,full
set wildignore+=**/node_modules/*
set wildignore+=**/bower_components/*
set number
set incsearch
set clipboard=unnamed

syntax on
filetype plugin indent on

"key mappings
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
let mapleader = ","

if has('nvim')
    au BufEnter * if &buftype == 'terminal' | :highlight TermCursor ctermfg=blue guifg=blue | endif
    au BufEnter * if &buftype == 'terminal' | :startinsert | endif

    tnoremap <A-h> <C-\><C-n><C-w>h
    tnoremap <A-j> <C-\><C-n><C-w>j
    tnoremap <A-k> <C-\><C-n><C-w>k
    tnoremap <A-l> <C-\><C-n><C-w>l
endif

"command that prints current highlighting group of the word at the cursor
"for debugging custom syntax
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
"run flow
map <leader>f :w<CR>:FlowMake<CR>
map <leader>t :w<CR>:FlowType<CR>

"key mappings - camel case motion
call camelcasemotion#CreateMotionMappings('<leader>')

"strip trailing whitespace
autocmd BufWritePre * StripWhitespace

"twig stop auto indent
autocmd BufEnter,BufNew *.twig setl noai nocin nosi inde=

"use different color for diff highlighting
highlight! link DiffText MatchParen

"allow searching dotfiles
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files=20000

"use ag instead of ack
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"let g:flow#autoclose = 1
let g:javascript_plugin_flow = 1

"neomake
let g:neomake_javascript_enabled_makers=['flow']
let g:neomake_highlight_lines=1

"neomake highlight groups
highlight NeomakeError ctermfg=15 ctermbg=4 guibg=#d70000 guifg=white

set secure
