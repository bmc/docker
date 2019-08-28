# `nbconvert` Docker file

This Docker image encapsulates Jupyter and `nbconvert`, along with TeX
(via TeX Live) and Pandoc, allowing easy conversions of Jupyter notebooks
in a controlled environment.

If you use the supplied `aliases.sh` file (suitable for sourcing in `bash`
or `zsh`), you can just invoke it as `nbconvert`. e.g.:

```shell
$ nbconvert --to html notebook.ipynb
```

(i.e., not `jupyter nbconvert ...`).

See <https://nbconvert.readthedocs.io/en/latest/usage.html> for details.

## To install

- `docker pull bclapper/pandoc`
- Source `aliases.sh` in your `.bashrc` or `.zshrc`.

Again, with the aliases in place, use `nbconvert`, without the `jupyter`.
