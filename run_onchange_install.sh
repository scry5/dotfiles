#!/bin/bash

set -euxo pipefail

if cd ~/powerlevel10k; then git pull; else git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k; fi
if ! command -v nvim 2>&1 >/dev/null; then pip3 install tldr; fi

if [ "$(uname)" = "Darwin" ]; then
  bash "${CHEZMOI_WORKING_TREE}/install_scripts/mac.sh"
elif [ "$(uname)" = "Linux" ]; then
  bash "${CHEZMOI_WORKING_TREE}/install_scripts/linux.sh"
else
  echo "unexpected OS $(uname)"
  exit 1
fi
