function! myspacevim#before() abort
    let g:neomake_enabled_c_makers = ['clang']
    nnoremap jk <esc>
endf
function! myspacevim#after() abort
endf
Variables, shortcut and other vim scripts, such as customizing some autocmd, can be included.

augroup MySpaceVim
  au!
  autocmd FileType markdown setlocal nowrap
augroup END
