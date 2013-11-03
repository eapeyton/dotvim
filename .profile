alias ll='ls -lsh'
export PATH=~/Library/Haskell/bin:$PATH
function resume() {
    if [ -f pause.vim ]; then
        vim -S pause.vim
    else
        if [ -f ~/.vim/pause.vim ]; then
            vim -S ~/.vim/pause.vim
        else
            echo "No pause file found!"
        fi
    fi
}
