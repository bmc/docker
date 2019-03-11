# Define drake (for "Docker rake"), to run inside the container.
#
# Usage:
# - drake [rake args]
# - drake bash # to fire up a bash shell in the container
function drake {
  if [ "$1" = "bash" ]
  then
    cmd="bash"
    shift 1
  else
    cmd="rake"
  fi

  docker run -it --rm -e TERM=xterm \
         -w `pwd` \
         -v "$HOME:$HOME" \
         -v "$HOME/.ssh:/root/.ssh" \
         -v "`pwd`/.gems:/root/.gem" \
         -p 4000:4000 \
         bclapper/staticsite $cmd "$@"
}
