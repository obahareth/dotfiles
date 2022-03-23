# Fisher
if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# Autojump
[ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

# Environment variables
source ~/.env_vars

# Starship prompt
starship init fish | source

# asdf
source /opt/homebrew/opt/asdf/libexec/asdf.fish

# aliases
alias ls="exa --icons"
alias dc="docker-compose"
alias dce="docker-compose exec"
alias flushdns="sudo killall -HUP mDNSResponder;sudo killall mDNSResponderHelper;sudo dscacheutil -flushcache"
alias gpg_test="echo \"test\" | gpg --clearsign"

set -x GPG_TTY (tty)


# Gcloud

# The next line updates PATH for the Google Cloud SDK.
# bass source '/Users/obahareth/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
# bass source '/Users/obahareth/google-cloud-sdk/completion.bash.inc'


# Navi
navi widget fish | source
set -g fish_user_paths "/usr/local/opt/openssl@1.1/bin" $fish_user_paths

