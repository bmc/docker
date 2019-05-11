function aws {
  # Change the current user in the HOME and pwd to the user inside the Docker
  # container ("user").
  docker_home=$(echo $HOME | sed -E -e "s|/$USER(/?)|/user\1|")
  docker_pwd=$(pwd | sed -E -e "s|/$USER(/?)|/user\1|")
  docker run -it --rm -w $docker_pwd -v $HOME:$docker_home \
    -e TERM=xterm \
    -e PAGER="$PAGER" \
    -e LESS="$LESS" \
    -e LESSCHARSET="$LESSCHARSET" \
    bclapper/awscli aws "$@"
}
