# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init zsh pre)"

export PATH="$HOME/.cargo/bin:$PATH"

# Fig post block. Keep at the bottom of this file.
eval "$(fig init zsh post)"

