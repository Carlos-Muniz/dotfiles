call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'freeo/vim-kalisi'
Plug 'editorconfig/editorconfig-vim'
Plug 'elmcast/elm-vim'
Plug 'psf/black'
Plug 'fisadev/vim-isort'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" deoplete
let g:deoplete#enable_at_startup = 1

" airline theme
let g:airline_theme='kalisi'

" Disable python 2 support
let g:loaded_python_provider = 0

" Point to neovim virtualenv.
let g:python3_host_prog = '~/.virtualenvs/neovim/bin/python'
let g:vim_isort_python_version = 'python3'
let g:black_virtualenv = '~/.virtualenvs/neovim'

" Move jedi-vim show_call_signatures
let g:jedi#show_call_signatures = "0"

" Disable editorconfig for git commits
au FileType gitcommit let b:EditorConfig_disable = 1

" colorscheme
colorscheme kalisi
set background=dark

" 256 color support
set t_Co=256

autocmd BufWritePre *.py execute ':Black'
autocmd BufWritePre *.py execute ':Isort'

set number
set ruler
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set fileformat=unix

" nmap <C-n> :NERDTreeFind<CR>
" nmap <C-l> :FZF<CR>

