Isolates the AWS command line tools in a Docker container.

- Run `bash install.sh` to create the image.
- Source `aliases.sh` in your `.bashrc` or `.zshrc`.

Use the `aws` command as usual. The alias ensures that it runs inside
the container but mounts your home directory to the container.

Using `install.sh` ensures that the container name matches the one
