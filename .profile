alias ll='ls -lsh'
export PATH=~/Library/Haskell/bin:$PATH
export PATH=/Library/Frameworks/Python.framework/Versions/3.3/bin:$PATH
export JAVA_HOME=`/usr/libexec/java_home -v 1.6`        
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
