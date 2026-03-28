#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="${HOME}/dotfiles"
CONFIG_DIR="${HOME}/.config"

link_path() {
  local src="$1"
  local dest="$2"

  mkdir -p "$(dirname "$dest")"

  if [ -L "$dest" ]; then
    rm -f "$dest"
  elif [ -e "$dest" ]; then
    mv "$dest" "${dest}.backup.$(date +%Y%m%d-%H%M%S)"
  fi

  ln -s "$src" "$dest"
  echo "linked: $dest -> $src"
}

mkdir -p "$CONFIG_DIR"

link_path "$DOTFILES_DIR/nvim" "$CONFIG_DIR/nvim"
link_path "$DOTFILES_DIR/kitty" "$CONFIG_DIR/kitty"
link_path "$DOTFILES_DIR/zsh/.zshrc" "$HOME/.zshrc"
link_path "$DOTFILES_DIR/tmux/.tmux.conf" "$HOME/.tmux.conf"

# Optional later
# link_path "$DOTFILES_DIR/yabai/.yabairc" "$HOME/.yabairc"
# link_path "$DOTFILES_DIR/skhd/.skhdrc" "$HOME/.skhdrc"
# link_path "$DOTFILES_DIR/git/.gitconfig" "$HOME/.gitconfig"
