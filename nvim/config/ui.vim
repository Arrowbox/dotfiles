" Turn on syntax highlighting
syntax on

" Turn off beep and use visual bell
set visualbell

" Turn off toolbars
set guioptions-=T
" Turn off right scrollbar
set guioptions-=r
set guioptions-=R
" Turn off left scrollbar
set guioptions-=l
set guioptions-=L
" Turn off tab pages
set guioptions-=e

" Turn on both numbers
" Will show current line-number but offsets for others
set number
set relativenumber

" Search settings
" Incremental search
set incsearch
" Highlight search terms
set hlsearch
" Ignore case for searching
set ignorecase
" Allow for case-sensitive if capital letters present
set smartcase

" Setup my status line
" Always keep status line visible
set laststatus=2
set statusline=%<\ %{mode()}\ \|\ %F%m\ %{fugitive#statusline()}%=\ %{&fileformat}\ \|\ %{&fileencoding}\ \|\ %{&filetype}\ \|\ %p%%\ \|\ LN\ %l:%c\  
