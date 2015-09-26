set makeprg=python\ %
command! -nargs=? Test call TestFile(<f-args>)
function! TestFile(...)
    if a:0 > 0
        let file_name = a:1 . "Test.py"
    elseif expand("%") =~ "Test"
        let file_name = expand("%")
    else
        let file_name = substitute(expand("%"), ".py", "", "")
        let file_name = file_name . "Test.py"
    end
    echo file_name
    execute "wa"
    execute "!python " . file_name
endfunction
