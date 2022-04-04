set -e fish_user_paths
set -U fish_user_paths $HOME/.local/bin $HOME/Applications $fish_user_paths
set fish_greeting
starship init fish | source
thefuck --alias | source 
fish_add_path /home/vincent/.spicetify

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/vincent/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<