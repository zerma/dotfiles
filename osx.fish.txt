#!/usr/bin/env bash

# Dotfiles zerma

# Pedir acceso de administrador
sudo -v

#Mantener viva la sesión de administrador
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Desactivar sonido de inicio
sudo nvram SystemAudioVolume=" "

# Expandir panel de guardado automáticamente
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Guardar todo a disco y no en iCloud
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Habilitar tocar para click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Mostrar la barra de direcciones en el finder
defaults write com.apple.finder ShowPathbar -bool true

# Buscar siempre en el folder actual
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Automáticamente ocultar el dock
defaults write com.apple.dock autohide -bool true

# Dock más transparente
defaults write com.apple.dock hide-mirror -bool true

# Esconder el ícono de Time Machine y de volumen
defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu"

# Iluminar automáticamente el teclado en poca luz
defaults write com.apple.BezelServices kDim -bool true

# Apagar el teclado tras no usar la computadora por 10 minutos
defaults write com.apple.BezelServices kDimTime -int 600

# Guardar las capturas en el escritorio, en formato PNG y sin sombra
defaults write com.apple.screencapture location -string "$HOME/Desktop"
defaults write com.apple.screencapture type -string "png"
defaults write com.apple.screencapture disable-shadow -bool true

# Esconder y deshabilitar Spotlight
sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search

# Usar AirDrop con cualquier tipo de conexión
defaults write com.apple.NetworkBrowser BrowseAllInterfaces 1