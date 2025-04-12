func! s:lines_count()
    echom line('$') . ' lines in buffer'
endfunc

func! s:cmdMenu()

     " variation of command-types
    let cmds = [
            \ "echom 'vim-version' version",
            \ 'call s:lines_count()',
            \ 'grep TODO'
            \ ]

    " callback for menu-popup
    func! s:selectedCommand(id, cmd) closure
        if a:cmd == -1  " menu was canceled
            return
        endif
        " execute selection; NOTE menu-items ided from 1
        exe cmds[a:cmd-1]
    endfunc

    call popup_menu(['version', 'line-count', 'TODO'], #{
            \ callback: function('s:selectedCommand'),
            \ })
endfunc

nnoremap <buffer> <silent> X :call <SID>cmdMenu()<cr>
