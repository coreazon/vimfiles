"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""               
"               
"               ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"               ██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"               ██║   ██║██║██╔████╔██║██████╔╝██║     
"               ╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
"                ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"                 ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
"               
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Set the GVim language to English.
lang en

" Set messages to be displayed in English.
language mes en

" Set the language menu to US English.
set langmenu=en_US.UTF-8

" Enable syntax highlighting.
syntax on

" Show line numbers.
set nu

" Enable the status bar plugin.
set laststatus=2

" Hide the default mode display (e.g., --INSERT--).
set noshowmode

" Disable compatibility with Vi to avoid unexpected issues.
set nocompatible

" Enable file type detection.
filetype on

" Enable file type-specific plugins.
filetype plugin on

" Load indentation rules for the detected file type.
filetype indent on

" Highlight the line under the cursor horizontally.
set cursorline

" Highlight the line under the cursor vertically
set cursorcolumn

" Set shift width to 4 spaces
set shiftwidth=4

" Set tab width to 4 columns
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not wrap lines
set nowrap

" While searching throug a file highligh matching chars
set incsearch

" Ignore casesens while searching
set ignorecase

" Override ignorecase while searching for capital letters
set smartcase

" Show partial command you type in the last line of the screen
set showcmd

" show matching words during a search
set showmatch

" use highlighting when doing a search
set hlsearch

" set the commands to save in history, default is 20
set history=1000

" enable auto completion menu after pressing tab
set wildmenu

" make wildmenu behave like similar to bash completion
set wildmode=list:longest

" ignore some files to not edit with vim
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

" Allow copying and pasting between Vim and other applications.
set clipboard=unnamed

" Allow deletion of words ?
set backspace=indent,eol,start

" PLUGINS -----------------------------------------------------

" Initialize plugin management.
call plug#begin('~/vimfiles/plugged')

" File system explorer for Vim.
Plug 'preservim/nerdtree'

" Plugin to enhance text objects and surrounding capabilities.
Plug 'tpope/vim-surround'

" Lightweight and customizable status line plugin.
Plug 'itchyny/lightline.vim'

" Automatic parenthese pairing
Plug 'tmsvg/pear-tree'

" Discord rich presence
Plug 'vimsence/vimsence'

" End plugin management.
call plug#end()

" MAPPINGS ---------------------------------------------------

"Set the the leader key
let mapleader = " "

" remap save
nnoremap <leader>w :w<CR>

" remap close
nnoremap <leader>q :q<CR>

" remap save and close
nnoremap <leader>wq :wq<CR>

" Map F5 to run python file
nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>

" Map F3 to open and close nerdtree
nnoremap <F3> :NERDTreeToggle<cr>

" VIMSCRIPT --------------------------------------------------

" filetypes to use 2 indents
autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

" enable undofile even after saving if vim version allows it
if version >= 703
    set undodir=~/vimfiles/backup
    set undofile
    set undoreload=10000
endif

"enable cursorlines only in active window when splitting
augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END

" set these option when running gvim
if has('gui_running')
    "custom font
    set guifont=Cousine\ Bold:h12

    " colorscheme
    set background=dark
    colorscheme onehalflight

    "only when using onehalf
    let g:lightline = {'colorscheme' : 'onehalflight'}
endif    

