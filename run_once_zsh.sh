#!/bin/bash

dnf install -y zsh

if [ ! -f /usr/local/bin/antibody ]; then
    curl -sfL git.io/antibody | sh -s - -b /usr/local/bin
fi
