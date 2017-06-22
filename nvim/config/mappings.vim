
" Change leader key and move the , to the old leader key
let mapleader=","
noremap \ ,

" cscope navigation
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprevious<CR>
nnoremap <C-h> :colder<CR>
nnoremap <C-l> :cnewer<CR>

" Open quickfix easily
nmap <Leader>n :QFix<CR>

" Jump to top left window, usually NERD Tree
map <Leader>t :wincmd t<CR>

" Use fuzzy finder
map <Leader>e :Files<CR>
map <Leader>b :Buffers<CR>

" Open NERD Tree
map <Leader>m :NERDTreeToggle<CR>

" Allow for quick change to buffer directory
map <Leader>cd :cd %:p:h<CR>

" Turn off highlights of search
map <Leader>// :nohlsearch<CR>

" Open fugitive status window
map <Leader>g :Gstatus<CR>

" Ultisnips config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"


" Copy to clipboard
vnoremap  <Leader>y  "+y
nnoremap  <Leader>Y  "+yg_
nnoremap  <Leader>y  "+y
nnoremap  <Leader>yy  "+yy

" Paste from clipboard
nnoremap <Leader>p "+p
nnoremap <Leader>P "+P
vnoremap <Leader>p "+p
vnoremap <Leader>P "+P
