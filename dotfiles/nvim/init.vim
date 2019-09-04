" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/shared/nvim/plugged')

Plug 'junegunn/vim-easy-align'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'https://github.com/vim-syntastic/syntastic.git'

Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

Plug 'https://github.com/sophacles/vim-processing.git'

" fzf - command line fuzzy finder
Plug '/usr/local/opt/fzf'

" surround.vim
Plug 'tpope/vim-surround'

" vim git gutter
Plug 'airblade/vim-gitgutter'

" vim-airline
Plug 'vim-airline/vim-airline'

" vim solarized
Plug 'altercation/vim-colors-solarized'

" tagbar - a class outline viewer
Plug 'majutsushi/tagbar'

" vim auto-complete
Plug 'valloric/youcompleteme'

" typescript syntax highlighting for vim
Plug 'leafgarland/typescript-vim'

" Always load the vim-devicons as the very last one.
Plug 'ryanoasis/vim-devicons'
" Initialize plugin system
call plug#end()

" Open NERDTree by default
" Not doing this anymore, because it is annoying
" when you're just editing random files in vim
" au VimEnter *  NERDTree

" remapping split window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

set guifont=OpenDyslexic:h11

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

source ~/bin/dotfiles/nvim/syntastic.vim
source ~/bin/dotfiles/nvim/devicons.vim

" show line numbers
set number

" change tab length
:set tabstop=2
:set shiftwidth=2

