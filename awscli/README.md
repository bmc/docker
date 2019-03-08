Isolates the AWS command line tools in a Docker container.

- `docker pull bclapper/awscli`
- Source `aliases.sh` in your `.bashrc` or `.zshrc`.

Use the `aws` command as usual. The alias ensures that it runs inside
the container but mounts your home directory to the container.
