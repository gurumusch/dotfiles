python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256
set number

" Disable Arrow keys in Escape mode
map <up> :echoerr "Stop being stupid. Use k"<CR>
map <down> :echoerr "Stop being stupid. Use j"<CR>
map <left> :echoerr "Stop being stupid. Use h"<CR>
map <right> :echoerr "Stop being stupid. Use l"<CR>
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> :echoerr "Stop being stupid. Use k"<CR>
imap <down> :echoerr "Stop being stupid. Use j"<CR>
imap <left> :echoerr "Stop being stupid. Use h"<CR>
imap <right> :echoerr "Stop being stupid. Use l"<CR>
" imap <up> <nop>
" imap <down> <nop>
" imap <left> <nop>
" imap <right> <nop>
