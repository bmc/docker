# Pandoc Docker file

There are loads of [pandoc images][] in [Docker Hub][],
but this one (not in Docker Hub) is mine. Having my own
gives me a bit more control over a tool I use a _lot_.

- `docker pull bclapper/pandoc`
- Source `aliases.sh` in your `.bashrc` or `.zshrc`.

Use the `pandoc` command as usual. The alias ensures that it runs inside
the container but mounts your home directory to the container.

[pandoc images]: https://hub.docker.com/search?q=pandoc&type=image&sort=updated_at&order=desc
[Docker hub]: https://hub.docker.com
