function pandoc {
   docker run --rm -v `pwd`:/data --user `id -u`:`id -g` pandoc/latex:2.9 "$@"
}
