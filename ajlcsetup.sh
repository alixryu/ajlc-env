#!/bin/bash
AJLCHOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
# vim setup
$AJLCHOME/vimrc/vimsetup.sh
# tmux, git setup
$AJLCHOME/pondfile.sh
# zsh setup
$AJLCHOME/zsh/zshsetup.sh
