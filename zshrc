# Fig pre block. Keep at the top of this file.
export PATH="${PATH}:${HOME}/.local/bin"
eval "$(fig init zsh pre)"

# Load Prezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# User configuration
source ~/.env_vars

# GPG Agent Setup
if test -f ~/.gnupg/.gpg-agent-info -a -n "$(pgrep gpg-agent)"; then
  source ~/.gnupg/.gpg-agent-info
  export GPG_AGENT_INFO
  GPG_TTY=$(tty)
  export GPG_TTY
else
  eval $(gpg-agent --daemon --write-env-file ~/.gnupg/.gpg-agent-info)
fi

# TTY Setup
GPG_TTY=$(tty)
export GPG_TTY

source $HOME/.cargo/env

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash
$GOPATH/bin/figurine -f "larry3d.flf" tam
source $(dirname $(gem which colorls))/tab_complete.sh
alias lc='colorls -lA --sd'

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/obahareth/.asdf/installs/nodejs/9.4.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/obahareth/.asdf/installs/nodejs/9.4.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/obahareth/.asdf/installs/nodejs/9.4.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/obahareth/.asdf/installs/nodejs/9.4.0/.npm/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

alias kraken="open -a 'GitKraken' --args -p $(pwd)"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"

[ -f ~/.inshellisense/key-bindings.zsh ] && source ~/.inshellisense/key-bindings.zsh