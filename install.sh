directory="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Found repository directory as $directory"

cd ~

echo "Linking .vimrc..."
ln -sf $directory/.vimrc ~/.vimrc

echo "Linking .gvimrc..."
ln -sf $directory/.gvimrc ~/.gvimrc

if [ "$(uname -s)" == "Darwin" ]; then
    echo "Linking .profile..."
    ln -sf $directory/.profile ~/.profile
fi

echo "Updating git submodule..."
cd $directory
git submodule init
git submodule update

echo "Done"

