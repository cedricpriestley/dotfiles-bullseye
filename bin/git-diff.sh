#!/bin/bash

tmux split-pane
tmux resize-pane -Z
tmux send-keys -t . "echo " @$ C-m
# tmux send-keys -t . "git diff @$ " C-m
