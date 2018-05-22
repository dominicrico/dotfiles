
if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
  echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
  return
fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap crisidev/homebrew-chunkwm

brew update
brew upgrade

# Install packages

apps=(
  coreutils
  ffmpeg
  git
  git-extras
  gnu-sed --with-default-names
  grep --with-default-names
  imagemagick
  vim --with-luajit --with-override-system-vi
  psgrep
  python
  wget
  curl
  diff-so-fancy
  ant
  maven
  gradle
  android-sdk
  android-ndk
  chunkwm
  neofetch
)

brew install "${apps[@]}"

export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"
