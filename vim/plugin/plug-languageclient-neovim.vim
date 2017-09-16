" plugin/plug-languageclient-neovim.vim

if !dko#IsLoaded('LanguageClient-neovim') | finish | endif

augroup dkolanguageclient
  autocmd!
augroup END

let g:LanguageClient_serverCommands = {}

" Disabled for now
if 0 && executable('flow-language-server')
  let g:LanguageClient_serverCommands['javascript'] = [
        \   'flow-language-server',
        \   '--stdio'
        \ ]
endif

if g:dko_use_js_langserver
  let g:LanguageClient_serverCommands['javascript'] = [
        \   dkonode#Langserver() . '/lib/language-server-stdio.js'
        \ ]
  autocmd dkolanguageclient FileType javascript LanguageClientStart
endif

" Autostarted in LanguageClient-neovim
if dko#IsPlugged('roxma/LanguageServer-php-neovim')
  autocmd dkolanguageclient FileType php LanguageClientStart
endif
