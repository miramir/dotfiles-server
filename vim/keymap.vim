" --------------------------------------------------------------------
" настроика горячих клавишь
" --------------------------------------------------------------------
let mapleader=','

" быстрое редактирование конфигурации VIM
nnoremap <silent><LEADER>v :tabnew $MYVIMRC<CR>
" быстрое восстановление конфигурации VIM
nnoremap <silent><LEADER>s :source $MYVIMRC<CR>
" исправить отступы при вставке из внешнего буфера
nnoremap <silent><LEADER>p u:set paste<CR>.:set nopaste<CR>

" Редко когда надо [ без пары =)
imap [ []<LEFT>
" Аналогично и для {
imap {<CR> {<CR>}<Esc>O

" сохранять выделение при визуальном изменении отступа
vnoremap < <gv
vnoremap > >gv
" более логичное копирование во внутренний буфер
nnoremap Y y<END>
" фикс для gg при включенном nostartofline
nnoremap gg gg<HOME>
vnoremap gg gg<HOME>
" фикс для G при включенном nostartofline
nnoremap G G<END>
vnoremap G G<END>
" скопировать в буфер иксов, как в терминале
vnoremap <C-C> "+y
" быстрая прокрутка буфера
nnoremap <C-DOWN> 8<C-E>
nnoremap <C-UP> 8<C-Y>
inoremap <C-DOWN> <C-O>8<C-E>
inoremap <C-UP> <C-O>8<C-Y>
vnoremap <C-DOWN> 8<C-E>
vnoremap <C-UP> 8<C-Y>
" не перепрыгивать через длинные строки при включенном переносе строк
nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk
nnoremap <DOWN> gj
nnoremap <UP> gk
vnoremap <DOWN> gj
vnoremap <UP> gk
inoremap <DOWN> <C-O>gj
inoremap <UP> <C-O>gk
" сохранять позицию при page up/down
nnoremap <PAGEUP> <C-U><C-U>
nnoremap <PAGEDOWN> <C-D><C-D>
inoremap <PAGEUP> <C-O><C-U><C-O><C-U>
inoremap <PAGEDOWN> <C-O><C-D><C-O><C-D>
vnoremap <PAGEUP> <C-U><C-U>
vnoremap <PAGEDOWN> <C-D><C-D>
" новая вкладка
nnoremap <C-T> :tabnew<CR>
inoremap <C-T> <C-O>:tabnew<CR>
vnoremap <C-T> <ESC>:tabnew<CR>
" предыдущая вкладка
nnoremap <silent><A-LEFT> gT
inoremap <silent><A-LEFT> <C-O>gT
vnoremap <silent><A-LEFT> <ESC>gT
" следующая вкладка
nnoremap <silent><A-RIGHT> gt
inoremap <silent><A-RIGHT> <C-O>gt
vnoremap <silent><A-RIGHT> <ESC>gt
" Переключение буфера
noremap <C-left> :bprev<CR>
noremap <C-right> :bnext<CR> 


" заворачиваем текст в теги
vnoremap <silent><LEADER>w <ESC>:call VisualTagsWrap()<CR>
" сохранить
nnoremap <F2> :w<CR>
inoremap <F2> <C-O>:w<CR>
vnoremap <F2> <ESC>:w<CR>
" сохранить всё
nnoremap <C-F2> :wall<CR>
inoremap <C-F2> <C-O>:wall<CR>
vnoremap <C-F2> <ESC>:wall<CR>

