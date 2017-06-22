" Avoid using virtualenv for vim
let g:python_host_prog='/usr/local/bin/python'

" Terminal windows respect ESC to go to normal mode
tnoremap <Esc> <c-\><c-n>

" Give the terminal window a filetype
autocmd TermOpen * setlocal ft=terminal

" numBlacklist is used to disable line numbering
if !exists('numBlacklist')
    let numBlacklist = []
endif
let numBlacklist += ['terminal']

" Solarized terminal
let g:terminal_color_0 = '#002831'    "Black
let g:terminal_color_1 = '#c60007'    "Red
let g:terminal_color_2 = '#738a05'     "Green
let g:terminal_color_3 = '#a57706'    "Yellow
let g:terminal_color_4 = '#2176c7'     "Blue
let g:terminal_color_5 = '#c61c6f'    "Magenta
let g:terminal_color_6 = '#259286'     "Cyan
let g:terminal_color_7 = '#eae3cb'    "White

let g:terminal_color_8 = '#001e27'    "Bright Black
let g:terminal_color_9 = '#bd3613'    "Bright Red
let g:terminal_color_10 = '#475b62'    "Bright Green
let g:terminal_color_11 = '#536870'    "Bright Yellow
let g:terminal_color_12 = '#708284'    "Bright Blue
let g:terminal_color_13 = '#5956ba'     "Bright Magenta
let g:terminal_color_14 = '#819090'    "Bright Cyan
let g:terminal_color_15 = '#fcf4dc'    "Bright White

augroup nvimrc_aucmd
  autocmd!
  autocmd CursorHold * rshada|wshada
augroup END

set inccommand=nosplit

set clipboard+=unnamedplus
