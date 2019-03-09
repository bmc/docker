# Define drake (for "Docker rake"), to run inside the container.
function drake {
    docker run -it --rm -e TERM=xterm \
           -w `pwd` \
           -v "$HOME:$HOME" \
           -v "$HOME/.ssh:/root/.ssh" \
           bclapper/staticsite rake "$@"
}
