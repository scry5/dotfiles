# Setup fzf
# ---------
if [[ ! "$PATH" == */home/kevin/.util/fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/kevin/fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/kevin/.util/fzf/shell/completion.zsh"

# Key bindings
# ------------
source "/home/kevin/.util/fzf/shell/key-bindings.zsh"
