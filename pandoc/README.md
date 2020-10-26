# Pandoc Docker aliases

`aliases.sh` provides a shell (Zsh/Bash) alias that invokes Pandoc
within the `pandoc/latex` Docker image. See 
<https://github.com/pandoc/dockerfiles> for more information. 

There are several aliases, actually:

- `pandoc211` runs a container with Pandoc version 2.11.
- `pandoc29` runs a container with Pandoc version 2.9.
- `pandoc27` runs a container with Pandoc version 2.7.
- `pandoc` runs `pandoc211` (thus, 2.11 is the default version).

The aliases mount  the current working directory into the Docker image,
in the manner described in the Pandoc `dockerfiles` repo's
[README](https://github.com/pandoc/dockerfiles/blob/master/README.md).
