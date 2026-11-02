#!/bin/bash

# ~/.tmux.conf
cat > "$HOME/.tmux.conf" <<'EOF'
setw -g mode-keys vi
set-option -g history-limit 100000

set -g set-clipboard on
bind-key -T copy-mode-vi y send-keys -X copy-pipe-and-cancel "xclip -selection clipboard"

bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
EOF


# ~/.vimrc
cat > "$HOME/.vimrc" <<'EOF'
syntax on
set number
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set hlsearch
set ruler
EOF


# ~/.nanorc
cat > "$HOME/.nanorc" <<'EOF'
set tabsize 4
set tabstospaces
EOF
