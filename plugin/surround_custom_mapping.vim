"=============================================================================
" File: underlinetag.vim
" Author: t9md <taqumd@gmail.com>
" Version: 0.1
" WebPage: http://github.com/t9md/vim-surroundMap
" License: BSD
"============================================================
" GUARD: {{{1
if exists('g:loaded_surround_custom_mapping')
  finish
endif
let g:loaded_surround_custom_mapping = 1
let s:old_cpo = &cpo
set cpo&vim

" Main: {{{1
if !exists('g:surround_custom_mapping')
    let g:surround_custom_mapping = {}
endif

function! s:surround_map(scope) "{{{
    if (a:scope != 'g') && empty(&ft)
        return
    endif
    let map_dict =  a:scope == 'g' ? '_' : &ft

    if !has_key(g:surround_custom_mapping, map_dict)
        return
    end
    for [key, action] in items(g:surround_custom_mapping[map_dict])
        let command = "let ".a:scope.":surround_".char2nr(key)." = ".string(action)
        execute command
    endfor
endfunction"}}}

" AutoCmd: {{{1
augroup Surround
    autocmd!
    autocmd VimEnter * call s:surround_map('g')
    autocmd FileType * call s:surround_map('b')
augroup END

" Finish: {{{1
let &cpo = s:old_cpo
" vim: foldmethod=marker
