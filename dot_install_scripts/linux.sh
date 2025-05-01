#! /bin/bash
mkdir -p ~/.local/bin
if ! command -v nvim 2>&1 >/dev/null; then
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  chmod u+x nvim.appimage
  sudo mv nvim.appimage ~/.local/bin/nvim
fi
if ! command -v rg 2>&1 >/dev/null; then
  sudo apt-get install -y ripgrep
fi
if ! command -v batcat 2>&1 >/dev/null; then
  sudo apt-get install -y bat
fi
if ! command -v fdfind 2>&1 >/dev/null; then
  sudo apt-get install -y fd-find
fi
