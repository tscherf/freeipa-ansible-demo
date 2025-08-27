#!/bin/sh

# session names
session1="conf"

# devel session
tmux new-session -d -s $session1
tmux rename-window -t $session1:0 'server'
tmux new-window -t $session1:1 -n 'replica'
tmux new-window -t $session1:2 -n 'client'

tmux send-keys -t conf:client "ssh root@client" C-m
tmux send-keys -t conf:replica "ssh root@replica" C-m
tmux send-keys -t conf:server "ssh root@server" C-m

tmux attach-session

