

" Can set this as b:gimmename_style in an ftplugin to make language-specific
" styles. Can be one of:
"   'snakecase'
"   'camelcase'
"   'mixedcase'
let g:gimmename_style = get(g:, 'gimmename_style', 'snakecase')

function! s:gimmename(style)
    if empty(a:style)
        let style = get(b:, 'variable', get(g:, 'gimmename_style'))
    else
        let style = a:style
    endif
    pyx import gimmename
    exec 'pyx gimmename.get_name("'. style .'")'
    return g:gimmecase_generated_variable
endf


inoremap <expr> <Plug>(gimmename-current-style) <SID>gimmename('')
inoremap <expr> <Plug>(gimmename-snakecase) <SID>gimmename('snakecase')
inoremap <expr> <Plug>(gimmename-camelcase) <SID>gimmename('camelcase')
inoremap <expr> <Plug>(gimmename-mixedcase) <SID>gimmename('mixedcase')


if !exists("g:gimmename_no_mappings") || !g:gimmename_no_mappings
    " Copy paste this block to your vimrc to customize mappings.
    " let g:gimmename_no_mappings = 1
    imap <expr> <C-x><C-z><C-z> <Plug>(gimmename-current-style)
    imap <expr> <C-x><C-z><C-s> <Plug>(gimmename-snakecase)
    imap <expr> <C-x><C-z><C-d> <Plug>(gimmename-camelcase)
    imap <expr> <C-x><C-z><C-m> <Plug>(gimmename-mixedcase)
endif
