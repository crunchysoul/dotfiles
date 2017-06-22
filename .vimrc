"*****************************************************************************
" vim-plug:
" https://github.com/junegunn/vim-plug
"*****************************************************************************

" Plugins will be downloaded under the specified directory:
call plug#begin('~/.vim/plugged')

" Navigate files in a sidebar:
Plug 'scrooloose/nerdtree'

" Add NERDTree Tabs plugin here:
Plug 'jistr/vim-nerdtree-tabs'

" Prevent ENTER in NERDTree open directory in tab: 
Plug 'baumanno/vim-nerdtree-direnter'

" Fancy statusline:
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" XTerm colour table:
Plug 'guns/xterm-color-table.vim'

" Colorschemes packs:
Plug 'flazz/vim-colorschemes'

" List ends here. Plugins become visible to Vim after this call:
call plug#end()




"*****************************************************************************
" General Vim Config:
"*****************************************************************************

set hidden              " speed up
set history=100         " speed up

syntax enable           " enable syntax processing
set number              " line numbers
set cursorline          " highlight the current line
set scrolloff=8
set nowrap              " don't wrap text
set showmatch           " highlight matching [{()}]

" Search:
set incsearch           " like morden search
set hlsearch            " highlight found words

" Indentation:
set autoindent          " auto-indent
set smartindent         
set tabstop=4           " tab spacing
set softtabstop=4       " number of spaces in tab when editing
set shiftwidth=4        " indent/outdent by 4 columns
set shiftround          " always indent/outdent to the nearest tabstop
set smarttab            " use tabs at the start of a line, spaces elsewhere
set expandtab           " use spaces instead of tabs

" Set line number colour:
highlight LineNr ctermbg=16
highlight LineNr ctermfg=grey 

" Set leader key, default is \:
" let mapleader=","

" Reload Vim Config Without Having To Restart Editor:
map <leader>s :source ~/.vimrc<ENTER>

" map <ESC> to 'jk':
inoremap jk <ESC>

" toggle gundo:
nnoremap <leader>u :GundoToggle<CR>

" tab key to switch windows (and current file path)
" set autochdir
" map <Tab> <C-W>W:cd %:p:h<CR>:<CR>
map <Tab> <C-W>W

" map gT/gt to H/L for switch tabs:
nnoremap H gT
nnoremap L gt




"*****************************************************************************
" vim-NERDTree config:
"*****************************************************************************

" open NERDTree when open vim by default:
au VimEnter *  NERDTree

" open new tab with NERDTree:
"au BufWinEnter * NERDTreeMirror

" move cursor to edit area by default:
au VimEnter * wincmd p

" NERDTree show hidden files by default:
let NERDTreeShowHidden=1

" file opened from NERDTree in new tab by default:
let NERDTreeMapOpenInTab='<ENTER>'

" close vim if the only window left open is a NERDTree:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" automatically close NerdTree when open a file:
" let NERDTreeQuitOnOpen = 1

" Do not display useless files in NERDTree:
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

" Reveal current file in NERDTree with <Leader>r:
map <Leader>r <esc>:NERDTreeFind<cr>

" Start NERDTree Tabs automatically:
let g:nerdtree_tabs_open_on_console_startup = 1




"*****************************************************************************
" airline-vim config:
"*****************************************************************************

" enables the statusline by default:
set laststatus=2

" Automatically displays all buffers when there's only one tab open:
let g:airline#extensions#tabline#enabled = 1 

" Tabline number as tab number (0: # of split; 2: both):
let g:airline#extensions#tabline#tab_nr_type = 1 

" using powerline fonts:
let g:airline_powerline_fonts = 1




"*****************************************************************************
" gvim(MacVim) specific Config:
"*****************************************************************************

if has('gui_running')
    set guifont=Hack:h14            " gvim font
    set guioptions-=L               " hide left scrollbar
    set guioptions-=r               " hide right scrollbar
    set background=dark             " background for colorscheme
    colorscheme gruvbox
    let g:airline_theme='bubblegum'
endif
"
"
"
"
"
"
"
"
"
