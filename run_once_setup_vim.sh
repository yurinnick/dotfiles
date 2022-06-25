#!/bin/bash

dnf install -y vim neovim

NVIM_PLUGINS_DIR="$HOME/.local/share/nvim/site/autoload"
VIM_PLUGINS_DIR="$HOME/.vim/autoload"

mkdir -p "$NVIM_PLUGINS_DIR"
mkdir -p "$VIM_PLUGINS_DIR"

if [ ! -f "$NVIM_PLUGINS_DIR/plug.vim" ]; then
  curl -fLo "$NVIM_PLUGINS_DIR/plug.vim" --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

  ln -s "$NVIM_PLUGINS_DIR/plug.vim" "$VIM_PLUGINS_DIR/plug.vim"
fi
