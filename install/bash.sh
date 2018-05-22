if ! is-macos -o ! is-executable brew; then
  echo "Skipped: ZSH and Wallpaper"
  return
fi

# Install zsh and Oh my ZSH

brew install zsh zsh-completions

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

chsh -s /usr/local/bin/zsh

# Install Spaceship Prompt

git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"

ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

# Install VIM and TMUX plugin managers

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install PiWal and set the wallpaper

pip3 install pywal

curl -o ~/Documents/wallpaper.jpg http://wallpaperswide.com/download/star_wars_poster-wallpaper-2560x1440.jpg

wal -i ~/Documents/wallpaper.jpg

osascript -e 'tell application "Finder" to set desktop picture to POSIX file "~/Documents/wallpaper.jpg"'

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
