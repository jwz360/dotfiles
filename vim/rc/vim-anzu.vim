if g:dko_use_incsearch
  nmap n <Plug>(incsearch-nohl)<Plug>(anzu-n-with-echo)
  nmap N <Plug>(incsearch-nohl)<Plug>(anzu-N-with-echo)
  nmap * <Plug>(incsearch-nohl)<Plug>(anzu-star-with-echo)
  nmap # <Plug>(incsearch-nohl)<Plug>(anzu-sharp-with-echo)
else
  nmap n <Plug>(anzu-n-with-echo)
  nmap N <Plug>(anzu-N-with-echo)
  nmap * <Plug>(anzu-star-with-echo)
  nmap # <Plug>(anzu-sharp-with-echo)
endif

" clear status
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)

" show anzu
if g:dko_use_airline
  let g:airline#extensions#anzu#enabled = 1
endif
