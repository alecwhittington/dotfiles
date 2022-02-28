#!/bin/sh
#
# Coleman
#
# This installs Coleman.
echo "🧞‍♂️"
echo "  🧞‍♂️ Checking for Coleman 🧞‍♂️"

# Check for Coleman
if test ! $(which coleman); then
  echo "    Installing 🧞‍♂️ Coleman for you."

  if [ -d "$HOME/.coleman/coleman.config.yaml" ]; then
    echo "Coleman Config installed already"
  else
    echo "Installing Coleman Config"
    cp $DOTFILES_ROOT/.coleman/coleman.config.yaml $HOME/.coleman/coleman.config.yaml
    echo "Coleman Config installed"
  fi

  if [ -d "$HOME/.coleman/coleman.workspace.yaml" ]; then
    echo "Coleman Workspace installed already"
  else
    echo "Installing Coleman Workspace"
    cp $DOTFILES_ROOT/.coleman/coleman.workspace.yaml $HOME/.coleman/coleman.workspace.yaml
    echo "Coleman Workspace installed"
  fi

else

  echo "    🧞‍♂️ Coleman already installed"
fi

echo ""
exit 0