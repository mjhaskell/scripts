" Neovim init.vim
" author: Mat Haskell
" contact: mhaskell9@gmail.com
" date: Oct 17 2018

" The Tutor told me to puth the next 3 lines in this file (idk if needed)
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vimrc

"""""""" vim-plug plugin manager"""""""
call plug#begin('~/.config/nvim/plugged')

""""""""" Typing
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

""""""""" Utils
Plug 'scrooloose/nerdtree'
Plug 'mhask94/vim-nerdtree-syntax-highlight'
" Must manually change terminal profile to use a NERD FONT for icons to work
Plug 'ryanoasis/vim-devicons'

""""""""" Style
Plug 'edkolev/tmuxline.vim'

call plug#end()
"""""""""""""""""""""""""""""""""""""""

"""""""" Custom Settings """"""""""""""
" syntax highlighting and filetype specific features
syntax on
filetype on
filetype plugin on
filetype indent on

" Always copy and paste to clipboard
set clipboard+=unnamedplus

" Use xclip for clipboard
" sudo apt install xclip
let g:clipboard = {
  \   'name': 'xclip-xfce4-clipman',
  \   'copy': {
  \      '+': 'xclip -selection clipboard',
  \      '*': 'xclip -selection clipboard',
  \    },
  \   'paste': {
  \      '+': 'xclip -selection clipboard -o',
  \      '*': 'xclip -selection clipboard -o',
  \   },
  \   'cache_enabled': 1,
  \ }

  " Relative line numbering with absolute line number on current line
  set relativenumber
  set number

""""""""""" Plugins """"""""""""""""""

"""""""""" Deoplete
let g:deoplete#enable_at_startup = 1
" Scroll through autocomplete options with Tab
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"""""""""" NerdTree """"""""""""""""""
" Start nerdtree if start vim with no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Start nerdtree if start vim with a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
" Open/Close NerdTree with Ctrl + N
map <C-n> :NERDTreeToggle<CR>

" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('py', 'green', 'none', 'green', '#151515')
call NERDTreeHighlightFile('cpp', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('hpp', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('h', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('ui', 'blue', 'none', 'blue', '#151515')
call NERDTreeHighlightFile('yaml', 'blue', 'none', 'blue', '#151515')
call NERDTreeHighlightFile('sh', 'Magenta', 'none', '#ff00ff', '#151515')
"""""""""""""""""""""""""""""""""""""
