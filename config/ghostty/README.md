# Ghostty

Shared [Ghostty](https://ghostty.org) config for macOS and Linux, linked to
`~/.config/ghostty` by `install.conf.yaml`. Needs 0xProto Nerd Font
and fish.

## Per-machine settings (not in this repo)

Anything specific to one computer goes in **`~/.config/ghostty-local/config`**,
which `config` loads last if it exists. At minimum, set the shell there, since
its path differs between machines and Ghostty started from the Dock or a
launcher may not find it on `PATH`:

```
command = /opt/homebrew/bin/fish
```

On Linux that is usually `command = /usr/bin/fish`. Keep anything personal
(project paths, hosts, scripts) in `~/.config/ghostty-local/` as well, never in
this repo.

## Themes

`themes/` holds Catppuccin Latte and Mocha from
[catppuccin/ghostty](https://github.com/catppuccin/ghostty) (MIT, see
`themes/LICENSE`). They differ slightly from Ghostty's built-in Catppuccin
themes, which is why they're vendored.
