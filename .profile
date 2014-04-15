alias ll='ls -lsh'
export PATH=~/Library/Haskell/bin:$PATH
export PATH=/usr/local/git/bin:$PATH

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

# Setting PATH for Python 3.4
# The orginal version is saved in .profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH
