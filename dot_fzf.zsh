# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/Cellar/fzf/0.54.3/bin* ]]; then
  PATH="${PATH:+${PATH}:}/usr/local/Cellar/fzf/0.54.3/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/Cellar/fzf/0.54.3/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/Cellar/fzf/0.54.3/shell/key-bindings.zsh"
