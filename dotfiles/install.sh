#!/bin/sh

for name in *; do
target="$HOME/.$name"
  if [ -e "$target" ]; then
if [ ! -L "$target" ]; then
echo "WARNING: $target exists but is not a symlink."
    fi
else
if [ "$name" != 'install.sh' ] && [ "$name" != 'README.md' ] && ["$name" != 'vim' ]; then
echo "Creating $target"
      ln -s "$PWD/$name" "$target"
    fi
fi
done

cp -rf $PWD/vim ~/.vim