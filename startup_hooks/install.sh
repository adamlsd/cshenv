#!/bin/sh

# Yeah, my CSHENV Install script is written in Bourne shell.  This is because
# CSH isn't a great scripting language, but it is a nice interactive shell.

export CSHENV_LOCATION="~/cshenv"

echo "Checking for ~/.login"
if [ ! -e ~/.login ]
then
    echo "Installing ~/.login"
    echo "setenv CSHENV_DIR ${CSHENV_LOCATION}" >> ~/.login
    echo 'source ${CSHENV_DIR}/startup_hooks/login' >> ~/.login
fi

echo "Checking for ~/.tcshrc"
if [ ! -e ~/.tcshrc ]
then
    echo "Installing ~/.tcshrc"
    echo "setenv CSHENV_DIR ${CSHENV_LOCATION}" >> ~/.tcshrc
    echo "setenv CSHENV_HIDE_SHELL_LEVEL_AT_ONE" >> ~/.tcshrc
    echo 'source ${CSHENV_DIR}/startup_hooks/tcshrc' >> ~/.tcshrc
fi

echo "Checking for vim setup"
if [ -e ~/.vimrc ]
then
    echo "Relocating vimrc"
    mv ~/.vimrc ~/.vim/vimrc.old
fi

if [ -e ~/.vim ]
then
    echo "Relocating vim setup"
    mv ~/.vim ~/.vim.old
fi

echo "Installing vim setup"
ln -s ${CSHENV_DIR}/vim ~/.vim

if [ -e ~/.gitconfig ]
then
    echo "Relocating git setup"
    mv ~/.gitconfig ~/.gitconfig-old
fi

echo "Installing git configuration"

echo "[include]" >> ~/.gitconfig
echo "  path = ${CSHENV_LOCATION}/git/gitconfig" >> ~/.gitconfig
echo "" >> ~/.gitconfig

echo "[user]" >> ~/.gitconfig
echo "  email = adam@recursive.engineer" >> ~/.gitconfig
echo "  name = ADAM David Alan Martin" >> ~/.gitconfig
echo "" >> ~/.gitconfig
echo "  signingKey = \"`hostname` Git\"" >> ~/.gitconfig

echo "" >> ~/.gitconfig
echo "[commit]" >> ~/.gitconfig
echo "  gpgSign = true" >> ~/.gitconfig
