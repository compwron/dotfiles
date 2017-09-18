ln -s $(pwd)/.gitconfig ~/.gitconfig
ln -s $(pwd)/.gitignore_global ~/.gitignore_global
ln -s $(pwd)/.zshrc ~/.zshrc

xcode-select --install

#homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash

#rvm
\curl -sSL https://get.rvm.io | bash -s stable --ruby

brew bundle
brew cask install 1password
brew cask install caffiene
brew cask install spectacle
brew cask install dropbox
brew cask install evernote
brew cask install sublime-text
#ln -s $(pwd)/Preferences.sublime-settings "/Users/$(whoami)/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
brew cask install ccmenu
brew cask install flux
brew cask install zoom
brew cask install screenhero

brew install boot2docker #docker docker-compose docker-machine xhyve docker-machine-driver-xhyve



#Apps: caffiene, spectacle, dropbox, evernote, Sublime, 1Pass, CCMenu, Docker, Flux, Zoom, ScreenHero, Slack, Xcode, ....
