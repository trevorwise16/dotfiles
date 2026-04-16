#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

# xcode cli tools
if ! xcode-select -p &>/dev/null; then
  xcode-select --install
  read -rp "Press enter after Xcode CLI tools finish installing..."
fi

# homebrew
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew bundle --file="$DOTFILES_DIR/Brewfile" --no-lock

# oh-my-zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
fi

# tpm
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm "$HOME/.tmux/plugins/tpm"
fi

# stow
cd "$DOTFILES_DIR"
for dir in ghostty k9s nvim starship tmux zsh; do
  stow -v -t "$HOME" "$dir"
done

echo ""
echo "Done. Remaining manual steps:"
echo "  - Open nvim and run :Lazy to install plugins"
echo "  - Open tmux and press C-Space I to install plugins"
