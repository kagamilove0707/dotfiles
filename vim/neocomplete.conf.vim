" neocomplete.vimを使います
let g:neocomplete#enable_at_startup = 1
" スマートケースを有効にします
let g:neocomplete#enable_smart_case = 1

" 2文字でneocomplete.vimが起動するようにします
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'
