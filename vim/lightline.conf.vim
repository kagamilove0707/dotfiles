" lightline.vimのためにステータスラインを2行に変更
set laststatus=2

" セパレーターの設定
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'active':
  \   { 'left':
  \     [ ['mode'], ['filename'] ] },
  \ 'separator':
  \   { 'left': "\u2b80", 'right': "\u2b82" },
  \ 'subseparator':
  \   { 'left': "\u2b81", 'right': "\u2b83" }
  \ }

