if ! is-executable brew -o ! is-executable git; then
  echo "Skipped: npm (missing: brew and/or git)"
  return
fi

brew install nvm

export DOTFILES_BREW_PREFIX_NVM=`brew --prefix nvm`
set-config "DOTFILES_BREW_PREFIX_NVM" "$DOTFILES_BREW_PREFIX_NVM" "$DOTFILES_CACHE"

. "${DOTFILES_DIR}/system/.nvm"
nvm install 8.9.1
nvm alias default 8.9.1

brew install yarn --without-node

# Globally install with npm

packages=(
  gtop
  nodemon
  npm
  release-it
  superstatic
  tldr
  electron
  commitizen
  cz-conventional-changelog
  cz-emoji
  grunt-cli
  react-native-cli
  create-react-app
  create-react-native-app
  avn
  avn-nvm
)

yarn global add "${packages[@]}"

avn setup
