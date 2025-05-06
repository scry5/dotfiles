#! /bin/bash
mkdir -p ~/.local/bin
if ! command -v nvim 2>&1 >/dev/null; then
  ARCH=$(uname -m)

  # Set file name based on architecture
  if [ "$ARCH" = "aarch64" ] || [ "$ARCH" = "arm64" ]; then
    FILE="nvim-linux-arm64.appimage"
  else
    FILE="nvim-linux-x86_64.appimage"
  fi
  curl -LO "https://github.com/neovim/neovim/releases/download/v0.11.1/$FILE"
  chmod u+x "$FILE"
  mv "$FILE" ~/.local/bin/nvim
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
