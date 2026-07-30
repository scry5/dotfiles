#!/bin/bash
brew install neovim
brew install ripgrep
brew install fd
brew install bat
brew install zellij
brew install fzf
if ! command -v cargo 2>&1 >/dev/null; then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
fi
