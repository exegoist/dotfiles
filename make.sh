#!/bin/bash
dir=~/dotfiles
originals=~/dotfiles/originals
files=`ls $dir | grep -v originals | grep -v *.sh`

echo "Creating directory $originals for backup of original dotfiles in ~"
mkdir -p $originals
echo "...done"

echo "Changing to the $dir"
cd $dir
echo "...done"

for file in $files; do
    echo "Moving any existing dotfiles from ~ to $originals"
    mv ~/.$file $originals/
    echo "Creating symlink to $file in home directory"
    ln -s $dir/$file ~/.$file
done

echo "Installing vundle.."
cd ~
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
source ~/.bashrc
mkdir ~/.vim/UltiSnips
cp *.snippets ~/.vim/UltiSnips/
