if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap caskroom/versions
brew tap caskroom/cask
brew tap caskroom/fonts

# Install packages

apps=(
  atom
  google-chrome
  iterm2
  alfred
  spotify
  forklift
  spark
  keeweb
)

brew cask install "${apps[@]}"

# Install useful QuickLook Plugins
# https://github.com/sindresorhus/quick-look-plugins

plugins=(
  provisionql
  qlvideo
  webpquicklook 
  qlimagesize
  betterzip
  quicklook-json
  qlmarkdown
  qlstephen
  qlcolorcode
)

brew cask install "${plugins[@]}"

