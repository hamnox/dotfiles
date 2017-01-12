#!/usr/bin/env bash
link gitconfig ~/.gitconfig
link bash_profile ~/.bash_profile && link bashrc ~/.bashrc && link .bashrc_personal
mkdir ~/.config/nvim
link init.vim  ~/.config/nvim/init.vim

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" && brew install tig
brew cask install atom mactex android-studio postgres
brew install neovim/neovim/neovim
brew install python python3 elixir coreutils image magick wget haskell-stack
sudo gem install lolcommits
pip install at
brew install npm && npm install -g http-server elm elm-test elm-oracle
brew tap homebrew/science && brew install r

