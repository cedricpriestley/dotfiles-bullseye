#!/bin/bash

tmux split-pane
tmux resize-pane -Z
tmux send-keys -t .  "nnn -dH" C-m
