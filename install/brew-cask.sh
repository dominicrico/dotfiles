if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Homebrew-Cask"
  return
fi

brew tap homebrew/cask-versions
brew tap homebrew/cask
brew tap homebrew/cask-fonts

# Install packages

apps=(
  spotify
  forklift
)

brew install "${apps[@]}"

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

brew install "${plugins[@]}"

