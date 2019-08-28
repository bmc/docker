function _pan_set_vars {
  docker_home=$(echo $HOME | sed -E -e "s|/$USER(/?)|/user\1|")
}

function pandoc {
  _pan_set_vars
  docker run -it --rm -w `pwd` -v $HOME:$HOME \
             -e TERM=xterm -e HOME=$docker_home -e USER=user \
             bclapper/pandoc /usr/bin/pandoc "$@"
}

# Fire up bash in the container
function panbash {
  set -x
  _pan_set_vars
  docker run -it --rm -w `pwd` -v $HOME:$HOME \
             -e TERM=xterm -e HOME=$docker_home -e USER=user \
             bclapper/pandoc /bin/bash "$@"
}
