
" Function for toggling numbering
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

" Call out to quick command to convert markdown to rtf and pipe it to
" clipboard
function! MarkdownToClipboard() range
    let save_pos = getpos(".")
    silent execute a:firstline.','.a:lastline.'w !md_to_clipboard'
    " Only restore position if in Normal mode
    call setpos(".", save_pos)
endfunction

command! -range=% Wmd <line1>,<line2>call MarkdownToClipboard()


" Open and close quickfix easily
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
    unlet g:qfix_win
  else
    botright copen 10
    let g:qfix_win = bufnr("$")
  endif
endfunction

command! -bang -nargs=? QFix call QFixToggle(<bang>0)
