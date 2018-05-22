if ! is-macos -o ! is-executable brew; then
  echo "Skipped: Atom packages"
  return
fi

# Install all the atom plugins

apm install --packages-file atom-packages.txt
