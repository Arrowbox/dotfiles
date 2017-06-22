" Figure out where vim configs are
if has("mac")
    " OS X specific
    let $VIMHOME = $HOME."/.vim/"
elseif has("unix")
    " Linux specific
    let $VIMHOME = $XDG_CONFIG_HOME."/nvim/"
else
    " Windows specific
endif

" Vundle setup
source $VIMHOME/plugins.vim

" Neovim
if has("nvim")
    source $VIMHOME/neovim.vim
endif

" Not concerned with being vi compatible
set nocompatible

" Get functions declared
source $VIMHOME/functions.vim

" Setup key mappings
source $VIMHOME/mappings.vim

" Standard UI settings
source $VIMHOME/ui.vim

" UI Settings
if has("nvim")
    source $VIMHOME/tui.vim
elseif has("gui_running")
    source $VIMHOME/gui.vim
else
    source $VIMHOME/tui.vim
    "source $VIMHOME/cli.vim
endif

set csprg=~/.bin/cscope_insensitive
"
"
" Turn off swap file generation
set noswapfile

" Line numbering relative while in window, otherwise absolute
if !exists('numBlacklist')
    let numBlacklist = []
endif

let numBlacklist += ['help', 'nerdtree']

autocmd WinLeave * if index(numBlacklist, &ft) < 0 | setlocal nornu
autocmd WinLeave * if index(numBlacklist, &ft) < 0 | setlocal nocursorline
autocmd WinEnter * if index(numBlacklist, &ft) < 0 | setlocal rnu
autocmd WinEnter * if index(numBlacklist, &ft) < 0 | setlocal cursorline
autocmd VimEnter * if argc() == 0 | Files

" Keep buffer list clear of old fugitive buffers
autocmd BufReadPost fugitive://* set bufhidden=delete

" Tab settings
filetype plugin indent on
set tabstop=4
set expandtab
set shiftwidth=4
set smarttab
set softtabstop=4
set autoindent
set modeline

" Backspace behavior
set backspace=indent,eol,start

" Tex is preferred over plaintex
let g:tex_flavor="tex"

" Change expand tab for make files
autocmd FileType make setlocal noexpandtab
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino
autocmd BufNewFile,BufRead make-*.inc set filetype=make
autocmd BufNewFile  *.c,*.h setlocal ff=dos
autocmd FileType md setlocal noexpandtab

" Turn on folding for C files
"set foldlevelstart=10
"autocmd FileType c,cpp setlocal foldcolumn=3 foldmethod=syntax
"syn region preProcIf start="\#ifdef TD" end="\#endif /\* TD" transparent fold
"syn sync fromstart

" Turn off search highlighting when insert starts
autocmd InsertEnter * nohls | redraw 
autocmd CursorHold * nohls | redraw

" Leave insert mode after timeout
autocmd InsertEnter * let updaterestore=&updatetime | set updatetime=15000
autocmd InsertLeave * let &updatetime=updaterestore
autocmd CursorHoldI * stopinsert
autocmd WinEnter * stopinsert

let NERDTreeIgnore = ['\.o$', '\.pyc$']
let NERDTreeMinimalUI = 1
"

" TODO List tracking
"command! TODO silent grep! -r TODO ./**/*.c
"map <S-PageDown> :lnext<CR>
"map <S-PageUp> :lprevious<CR>


" Send symbol, call. file, global and include results go to quickfix
set csqf=s-,c-,f-,i-,g-,t-
set cscopetag
"nmap <Leader>f :cf make.err<CR>


function! ResetCscope()
    cscope reset
endfunction

command Mcs silent execute '!csall' | silent cscope reset | redraw
nmap <Leader>. :silent execute '!csall'<CR>:silent cscope reset<CR>


nnoremap <Leader>c :Wmd<CR>
vnoremap <Leader>c :Wmd<CR>

"command Merr silent execute '!errFormat' | cf build.err | copen
"
"map <F5> :cscope kill 0 <CR> | execute '!csall' | :cscope add cscope.out ./ -C<CR>

set list
set listchars=tab:▸-,eol:¬,trail:·
set fillchars=vert:\ 

set scrolloff=3


filetype plugin on
set ofu=syntaxcomplete#Complete


" Reload file if it changes
set autoread


" Make diffs open as a vertical split
set diffopt+=vertical

let g:ackprg = 'ag --nogroup --nocolor --column'
