#!/bin/bash
set -e


if [ "$1" = 'build' ]; then
  export MAME=mame$VER.zip
  cd /workspace
  wget https://github.com/mamedev/mame/archive/$MAME
  unzip $MAME
  cd mame-*
  make

  echo "end"


  exit 0
fi

exec "$@"
