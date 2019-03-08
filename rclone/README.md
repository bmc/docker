Isolates [rclone](https://rclone.org) in a Docker container.

- Run `docker pull bclapper/rclone` to install the latest image.
- Source `aliases.sh` in your `.bashrc` or `.zshrc`.

Use the `rclone` command as usual. The alias ensures that it runs inside
the container but mounts your home directory to the container.
