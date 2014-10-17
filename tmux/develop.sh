SESSION=$USER
tmux new-session -d -s $SESSION

# Support
tmux new-window -n $SESSION:1 -n 'Support'
tmux split-window -h
tmux split-window -v
tmux send-keys "featureprep" C-m
tmux select-pane -t 1
tmux send-keys "serve" C-m
tmux select-pane -t 0
tmux send-keys "build" C-m

# Features
tmux select-window -t $SESSION:0
tmux rename-window -t $SESSION:0 'Features'
tmux split-window -h
tmux resize-pane -R 20
sleep 1
tmux send-keys "features" C-m
tmux select-pane -t 0
tmux send-keys "vim" C-m

# Client Tests
tmux new-window -t $SESSION:2 -n 'Client Tests'
tmux split-window -h
tmux resize-pane -R 20
tmux send-keys "cunits" C-m
tmux select-pane -t 0
tmux send-keys "vim" C-m

# Server Tests
tmux new-window -t $SESSION:3 -n 'Server Tests'
tmux split-window -h
tmux resize-pane -R 20
tmux send-keys "sunits" C-m
tmux select-pane -t 0
tmux send-keys "vim" C-m

# UI
tmux new-window -t $SESSION:4 -n 'UI'
tmux send-keys "vim" C-m

# Organize windows.
tmux swap-window -s $SESSION:3 -t $SESSION:1
tmux swap-window -s $SESSION:2 -t $SESSION:1
tmux swap-window -s $SESSION:4 -t $SESSION:3
tmux swap-window -s $SESSION:3 -t $SESSION:2

# Set default window.
tmux select-window -t $SESSION:0
tmux attach-session -t $SESSION
