# Pandoc Docker aliases

`aliases.sh` provides a shell (Zsh/Bash) alias that invokes Pandoc
within the `pandoc/latex` Docker image. See 
<https://github.com/pandoc/dockerfiles> for more information. Currently,
the alias is wired to Pandoc version 2.9.

The alias in `aliases.sh` mounts the current working directory into the
Docker image, in the manner described in the Pandoc `dockerfiles` repo's
[README](https://github.com/pandoc/dockerfiles/blob/master/README.md).
