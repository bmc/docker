function nbconvert {
  docker_home=$(echo $HOME | sed -E -e "s|/$USER(/?)|/user\1|")
  docker run -it --rm -w `pwd` -v $HOME:$HOME \
             -e TERM=xterm -e HOME=$docker_home -e USER=user \
             bclapper/nbconvert:latest jupyter nbconvert "$@"
}

function nbconvertbash {
  docker_home=$(echo $HOME | sed -E -e "s|/$USER(/?)|/user\1|")
  docker run -it --rm -w `pwd` -v $HOME:$HOME \
             -e TERM=xterm -e HOME=$docker_home -e USER=user \
             bclapper/nbconvert:latest /bin/bash "$@"
}
