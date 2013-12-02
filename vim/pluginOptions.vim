" 
"  easytag
" 
let g:easytags_file = '/tmp/vimtags'

" 
"  zencoding.vim
" 

" complete tags using omnifunc then add this 
let g:use_zen_complete_tag = 1

" 
" closetag
"
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.config/vim/bundle/closetag.vim/plugin/closetag.vim

"
" ctrlp
"
let g:ctrlp_max_depth = 5
let g:ctrlp_open_new_file = 't'
let g:ctrlp_open_multiple_files = 't'
let g:ctrlp_cmd = 'CtrlPMRU'

"
" vim-airline
"
let g:airline#extensions#tabline#enabled = 1

