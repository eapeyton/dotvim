set makeprg=python3\ %
command! -nargs=? Test call TestFile(<f-args>)
function! TestFile(...)
    if a:0 > 0
        let file_name = "Test" . a:1 . ".py"
    else
        let file_name = "Test" . expand("%")
    end
    echo file_name
    execute "!python3 " . file_name
endfunction
