# Setup fzf
# ---------
if [[ ! "$PATH" == */usr/local/Cellar/fzf/0.54.1/bin* ]]; then
  PATH="${PATH:+${PATH}:}/usr/local/Cellar/fzf/0.54.1/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/usr/local/Cellar/fzf/0.54.1/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/usr/local/Cellar/fzf/0.54.1/shell/key-bindings.zsh"
