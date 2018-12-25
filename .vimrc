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

let mapleader = ','

colorscheme solarized8_high

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
