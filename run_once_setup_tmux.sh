#!/bin/bash

sudo dnf install tmux

TPM_DIR="$HOME/.tmux/plugins/tpm"
if [ ! -d "$TPM_DIR" ];then
    mkdir -p "$TPM_DIR"
    git clone --depth=1 https://github.com/tmux-plugins/tpm "$TPM_DIR"
fi
