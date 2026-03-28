

eval "$(oh-my-posh init zsh --config 'star')"

export EDITOR=nvim
export VISUAL="$EDITOR"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

# uv-managed Python and tools

# handy aliases

# Homebrew Python first
export PATH="/opt/homebrew/opt/python@3.14/libexec/bin:/opt/homebrew/bin:$PATH"

# Keep uv-installed tools available, but after Homebrew
export PATH="$PATH:$HOME/.local/bin"
