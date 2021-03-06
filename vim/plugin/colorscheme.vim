" plugin/colorscheme.vim

let s:cpo_save = &cpoptions
set cpoptions&vim

augroup dkocolorscheme
  autocmd!
augroup END

" ============================================================================

let s:truecolor = has('termguicolors')
      \ && $COLORTERM ==# 'truecolor'
      \ && $TERM_PROGRAM !=# 'Apple_Terminal'
if s:truecolor | let &termguicolors = 1 | endif

if s:truecolor
  if dkoplug#Exists('vim-two-firewatch')
    function! s:Firewatch() abort
      silent! colorscheme two-firewatch
    endfunction
    nnoremap <silent><special> <Leader>zt
          \ :<C-U>call <SID>Firewatch()<CR>:set bg=light<CR>
  endif
endif

autocmd dkocolorscheme VimEnter * nested silent! execute 'colorscheme meh'

" ============================================================================

let &cpoptions = s:cpo_save
unlet s:cpo_save
