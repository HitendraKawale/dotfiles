#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="${HOME}/dotfiles"
CONFIG_DIR="${HOME}/.config"

link_file() {
  local src="$1"
  local dest="$2"

  mkdir -p "$(dirname "$dest")"

  if [ -L "$dest" ]; then
    rm "$dest"
  elif [ -e "$dest" ]; then
    mv "$dest" "${dest}.backup.$(date +%Y%m%d-%H%M%S)"
  fi

  ln -s "$src" "$dest"
  echo "linked: $dest -> $src"
}

echo "Setting up dotfiles from: $DOTFILES_DIR"

mkdir -p "$CONFIG_DIR"

link_file "$DOTFILES_DIR/nvim" "$CONFIG_DIR/nvim"
link_file "$DOTFILES_DIR/kitty" "$CONFIG_DIR/kitty"
link_file "$DOTFILES_DIR/tmux/.tmux.conf" "$HOME/.tmux.conf"
link_file "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"

# Optional: uncomment if you add these later
# link_file "$DOTFILES_DIR/yabai/.yabairc" "$HOME/.yabairc"
# link_file "$DOTFILES_DIR/skhd/.skhdrc" "$HOME/.skhdrc"
# link_file "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"

echo "Done."
