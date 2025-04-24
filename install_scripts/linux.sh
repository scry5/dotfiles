#! /bin/bash
if ! command -v nvim 2>&1 >/dev/null; then
  curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
  chmod u+x nvim.appimage
  sudo mv nvim.appimage ~/.local/bin/nvim
else
  echo "Neovim already installed. Skipping!"
fi
sudo apt-get install -y ripgrep
sudo apt-get install -y bat
