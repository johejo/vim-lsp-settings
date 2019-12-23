" Reference
" https://github.com/emacs-lsp/lsp-python-ms/blob/master/lsp-python-ms.el
" FIXME: Does not work well...
augroup vimlsp_settings_pyls_ms
  au!
  autocmd User lsp_setup ++once call lsp#register_server({
      \ 'name': 'pyls_ms',
      \ 'cmd': {server_info->lsp_settings#get('pyls_ms', 'cmd', [lsp_settings#exec_path('pyls_ms')])},
      \ 'initialization_options': lsp_settings#get('pyls_ms',
      \     'initialization_options', {
      \         'analysisUpdates': v:true,
      \         'asyncStartup': v:true,
      \         'displayOptions': {
      \             'maxDocumentationLineLength': 0,
      \             'maxDocumentationTextLength': 0,
      \             'trimDocumentationLines': v:false,
      \             'trimDocumentationText': v:false,
      \             'preferredFormat': 'markdown',
      \           },
      \         'interpreter': {
      \             'properties': {
      \                 'InterpreterPath': exepath('python3'),
      \                 'Version': split(system('python3 -V'))[1][:4],
      \                 'UseDefaultDatabase': v:true,
      \               },
      \           },
      \       }),
      \ 'whitelist': lsp_settings#get('pyls_ms', 'whitelist', ['python']),
      \ 'blacklist': lsp_settings#get('pyls_ms', 'blacklist', []),
      \ 'config': lsp_settings#get('pyls_ms', 'config', {}),
      \ 'workspace_config': lsp_settings#get('pyls_ms', 'workspace_config', {}),
      \ })
augroup END
