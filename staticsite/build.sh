#!/usr/bin/env bash

if [ ! -f Rakefile ]
then
  echo "No Rakefile!" >&2
  exit 1
fi
if [ -f Gemfile ]
then
  # Install these gems in the local .gems directory, so they'll persist
  # (assuming the local directory is mounted into the Docker container).
  echo "Updating gems."
  bundle install --quiet --path .gems || exit 1
fi

echo + "$@"
exec bundle exec "$@"

