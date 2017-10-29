#!/usr/bin/env bash

# Install all my regular programs
echo "This is Script will install and config the following software:"
echo "termite tint2 nvim vim node npm zsh ranger stow adapta-breath-theme"
sudo pacman -S --noconfirm termite tint2 nvim vim git node npm zsh ranger stow

echo "Cloning Prezto config Framework"
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

echo "Copying Prezto config files"
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

for DIR in `find . -maxdepth 1 -mindepth 1 -type d -printf '%f\n'`; do
    stow "$DIR"
done

echo "Changing the default Shell to: ZSH"
chsh -s /bin/zsh

echo "1... Put 'source "$HOME/.zshConfig"' to the beggining of ~/.zshrc"
echo "2... Go to ~/.zpreztorc and change the theme to 'powerlevel9k'"
