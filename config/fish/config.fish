# Fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# Autojump
[ -f /usr/local/share/autojump/autojump.fish ]; and source /usr/local/share/autojump/autojump.fish

# Colorls
alias lc='colorls -lA --sd'

# Environment variables
source ~/.env_vars

# asdf
source ~/.asdf/asdf.fish

alias dc="docker-compose"
alias dce="docker-compose exec"

set -x GPG_TTY (tty)


# Gcloud

# The next line updates PATH for the Google Cloud SDK.
bass source '/Users/obahareth/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
bass source '/Users/obahareth/google-cloud-sdk/completion.bash.inc'
