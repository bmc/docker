# Docker image for building static sites

I often use `rake` and `lessc` to build static sites. This image,
`bclapper/staticsite`, defines a Docker container that includes all the
stuff I typically use.

`docker pull bclapper/staticsite` to get the latest, though I suspect this
image is not very useful to anyone but me.

The `./aliases.sh` file defines a `drake` command that invokes `rake`
within the container.

