#!/bin/bash

mkdir -p "$HOME/.ssh"

if [ ! -f "$HOME/.ssh/id_rsa" ]; then
    ssh-keygen -b 2048 -t rsa -f $HOME/sshkey -q -N ""
fi

