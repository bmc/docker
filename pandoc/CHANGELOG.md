# Change Log for bclapper/pandoc

**Version 1.0.0**

- Added `LABEL` for version (`org.clapper.version`).
- Updated to Ubuntu 18.04 (which also removes the need to edit
  `apt-sources.list`)
- Fixed `aliases.sh` to mount `$HOME` to `$HOME` inside the container,
  so absolute paths within `$HOME` on the host will still work once inside
  the container.
- Cleaned up non-root user processing in `Dockerfile`.
- Added `panbash` alias, to fire `bash` up in the container. Useful mostly
  for debugging.

**Prior versions (not labeled) **

- Initial build, created against Ubuntu 17.10.
