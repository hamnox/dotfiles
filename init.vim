execute pathogen#infect('~/.config/nvim/bundle/{}')

" vim-plug section "
call plug#begin('~/.local/share/nvim/plugged')
Plug 'elmcast/elm-vim', { 'for': 'elm' } 
call plug#end()

" for elm-vim
let g:elm_setup_keybindings = 0
let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 0
let g:elm_syntastic_show_warnings = 0
let g:elm_browser_command = ""
let g:elm_detailed_complete = 0
let g:elm_format_autosave = 0
let g:elm_format_fail_silently = 0

" syntax highlighting
syntax on
"filetype plugin indent on

if has("syntax")
  syntax enable
endif


" line numbers
set number
set nowrap

" pythony tabs
set autoindent smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start " defaults to eol,start iirc

set history=10000 " increase history

set hlsearch  " highlight searches
set ignorecase  " ignore case when searching...
set smartcase  " ...except when a capital letter is in the search
set ruler  " show the cursor position on the bottom of the screen all the time
set laststatus=2  " helps show the file name
set incsearch  " start searching before you hit enter

"fold based on indent
set foldmethod=indent
set foldnestmax=100

" keep visual selection highlighted when indenting/deindentint
vnoremap < <gv
vnoremap > >gv

" I like being able to scroll with the mouse, since it's so close-by
" on my laptop keyboard anyway
set mouse=a 
nnoremap <F3> :set mouse=a<CR>
nnoremap <F4> :set mouse=<CR>

" this goes with my terminal colors better (I use a simple version of
" solarized - no weird app customization, just terminal colors)
" hi Search cterm=NONE ctermfg=grey ctermbg=darkblue
" hi Visual cterm=NONE ctermfg=black ctermbg=darkyellow`

" bash-like tab completion when typing paths in :e and friends
set wildmode=longest:full,full
set wildmenu

" convenient win-grab functionality
" ,u to hide the current buffer and record what buffer it was in a clipboard
" ,U to copy the current buffer's id without hiding it
" ,h or ,j or ,k or ,l to paste the recorded buffer relative to the current
" window
" note: this doesn't seem to work on scratch windows. I'm not really sure why.
let g:wingrab_last_buffer = -1
function! Wincp()
    let g:wingrab_last_buffer = bufnr("%")
endfunction
nnoremap ,u :call Wincp()<CR>:hide<CR><C-=><ESC><ESC>
nnoremap ,<S-U> :call Wincp()<CR><ESC><ESC>
nnoremap ,h :aboveleft vnew<CR>:execute "buffer! " . g:wingrab_last_buffer<CR><C-=><ESC><ESC>
nnoremap ,l :rightbelow vnew<CR>:execute "buffer! " . g:wingrab_last_buffer<CR><C-=><ESC><ESC>
nnoremap ,k :aboveleft new<CR>:execute "buffer! " . g:wingrab_last_buffer<CR><C-=><ESC><ESC>
nnoremap ,j :rightbelow new<CR>:execute "buffer! " . g:wingrab_last_buffer<CR><C-=><ESC><ESC>

" ,n to open nerdtree
" nnoremap ,n :NERDTree<CR>

"BEGIN from eevee's dotfiles: https://github.com/eevee/rc/blob/master/.vimrc
set undodir=~/.vim/undo         " persistent undo storage
set undofile                    " persistent undo on
set showcmd                     " display incomplete commands
" set encoding=utf-8              " best default encoding
set fileformats=unix,dos        " unix linebreaks in new files please
setglobal fileencoding=utf-8    " ...
set nobomb                      " do not write utf-8 BOM!

set scrolloff=2                 " always have 2 lines of context on the screen
"END from eevee's dotfiles: https://github.com/eevee/rc/blob/master/.vimrc

