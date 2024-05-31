function! MyFunction()
    call somefile#Hello()
endfunction

function! MakeDirWrite()
    execute "!mkdir -p '%:h'"
    write
endfunction

function! GoToJump()
    jumps
    let j = input("Please select your jump: ")
    if j != ''
        let pattern = '\v\c^\+'
        if j =~ pattern
            let j = substitute(j, pattern, '', 'g')
            execute "normal " . j . "\<c-i>"
        else
            execute "normal " . j . "\<c-o>"
        endif
    endif
endfunction

" vim: ts=4 sts=4 sw=4 et

