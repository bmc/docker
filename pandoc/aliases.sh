alias pandoc=pandoc29
alias pandoc29="PANDOC_VERSION=2.9 run_pandoc"
alias pandoc27="PANDOC_VERSION=2.7 run_pandoc"

function run_pandoc {
  docker run --rm -v `pwd`:/data --user `id -u`:`id -g` pandoc/latex:$PANDOC_VERSION "$@"
}
