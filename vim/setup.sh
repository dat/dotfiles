#!/usr/bin/env bash

# 1) setup Vundle first
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# 2) setup Vim config file
cp ./vimrc ~/.vimrc

# 3) final setup
echo run Vim and type :PluginInstall

