#!/usr/bin/env bash

if [ -f Gemfile ]
then
  # Install these gems in the local .gems directory, so they'll persist
  # (assuming the local directory is mounted into the Docker container).
  echo "Updating gems."
  bundle install --quiet --path .gems || exit 1
fi

if [ "$1" = "bash" ]
then
  /bin/sh -c 'exec bash'

elif [ ! -f Rakefile ]
then
  echo "No Rakefile!" >&2
  exit 1
else
    echo + "$@"
    export GEM_PATH=`pwd`/.gems:$(gem env gempath)
    exec bundle exec "$@"
fi

