"
" rnvimr
"

noremap sf :Defx<CR>

call defx#custom#option('_', {
      \ 'winwidth': 35,
      \ 'split': 'vertical',
      \ 'direction': 'topleft',
      \ 'show_ignored_files': 0,
      \ 'buffer_name': '',
      \ 'toggle': 1,
      \ 'resume': 1
      \ })

autocmd FileType defx call s:defx_mappings()

function! s:defx_mappings() abort
  nnoremap <silent><buffer><expr> l     <SID>defx_toggle_tree()                    " 打开或者关闭文件夹，文件
  nnoremap <silent><buffer><expr> .     defx#do_action('toggle_ignored_files')     " 显示隐藏文件
  nnoremap <silent><buffer><expr> <C-r>  defx#do_action('redraw')
	nnoremap <silent><buffer><expr> N
	  \ defx#do_action('new_file')
endfunction

function! s:defx_toggle_tree() abort
    " Open current file, or toggle directory expand/collapse
    if defx#is_directory()
        return defx#do_action('open_or_close_tree')
    endif
    return defx#do_action('multi', ['drop'])
endfunction


" 在打开多个tab的情况下，当前tab里只有一个buffer和nerd树，当关闭buffer时，自动关闭当前标签页的nerd树
autocmd BufEnter * if tabpagenr('$') > 1 && winnr('$') == 1 && exists('b:defx') |
\ tabclose | endif

    " 在新tab页打开文件
func! MyT(context) abort
  if isdirectory(get(a:context.targets, 0)) == 0
  	call defx#call_action('drop', 'tabe')
	endif
endfunc


call defx#custom#column('icon', {
      \ 'directory_icon': ' ',
      \ 'opened_icon': ' ',
      \ 'root_icon': ' ',
			\ 'vim': ' '
			\ })

" call defx#custom#column('git', 'indicators', {
" 			\ 'Modified'  : 'M',
"   		\ 'Staged'    : '✚',
"   		\ 'Untracked' : '✭',
"   		\ 'Renamed'   : '➜',
"   		\ 'Unmerged'  : '═',
"   		\ 'Ignored'   : '☒',
"   		\ 'Deleted'   : '✖',
"   		\ 'Unknown'   : '?'
"   		\ })

" 增加图标的宽度，来解决图标 与文件名重叠的问题
"let g:defx_icons_column_length = 2

"window选择器
" if you want to use overlay feature
let g:choosewin_overlay_enable = 1



