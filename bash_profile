# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init bash pre)"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/obahareth/google-cloud-sdk/path.bash.inc' ]; then . '/Users/obahareth/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/obahareth/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/obahareth/google-cloud-sdk/completion.bash.inc'; fi


source $HOME/.bash_env_vars

# Fig post block. Keep at the bottom of this file.

[[ -f "$HOME/.fig/shell/bash_profile.post.bash" ]] && builtin source "$HOME/.fig/shell/bash_profile.post.bash"
