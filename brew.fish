#!/usr/bin/env bash
#Actualizar brew
brew update

# Actualizar las fórmulas
brew upgrade

# Instalar cask para instalar mis aplicaciones preferidas
brew tap phinze/homebrew-cask
brew install brew-cask

# Actualizar canales alternativos de aplicaciones
brew tap caskroom/versions

function installcask() {
  echo “Instalando ${@} …”
  brew cask install "${@}" 2> /dev/null
}
installcask alfred
installcask caffeine
installcask dropbox
installcask filezilla
installcask google-chrome
installcask iterm2
installcask middleclick
installcask mou
installcask postgres
installcask skype
installcask spotify
installcask spotifree
installcask steam
installcask sublime-text3
installcask the-unarchiver
installcask tor-browser
installcask virtualbox
installcask vlc

# Remove outdated versions from the cellar
brew cleanup
