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

$GOPATH/bin/figurine -f "larry3d.flf" tam

# asdf
source ~/.asdf/asdf.fish
