#!/bin/sh
set -e

CMD="$1"

if [[ ${CMD:0:4} = "http" ]]; then
  GIT_SRC=$1
  CMD="pyflakes"
fi

if [[ ${CMD:0:3} = "git" ]]; then
  GIT_SRC=$1
  CMD="pyflakes"
fi

if [ ! -z "$GIT_SRC" ]; then
  cd /code
  git clone $GIT_SRC
fi

if [ "$CMD" = "pyflakes" ]; then
  find -L /code $CUSTOM_FIND -name [eE]xtensions -prune -o -name skins -prune -o -name "*.py" -print | xargs -r pyflakes
else
  exec "$@"
fi
