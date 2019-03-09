# Dockerfile for static site generation. Supplies:
#
# - Ruby 2.x
# - Jekyll
# - lessc
# - kramdown
#
# NOT based on jekyll/jekyll, because I want Debian, not Alpine.
# ------------------------------------------------------------------------------

FROM ruby:2.6.0-stretch
RUN apt-get update && apt-get install -y git curl rsync ruby-dev less

# Need Node.js and npm, to get lessc.
# See https://github.com/nodesource/distributions/blob/master/README.md#installation-instructions
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN npm install -g less

RUN gem install jekyll kramdown kramdown-parser-gfm

WORKDIR /home/root
RUN mkdir -p /usr/local/bin
COPY build.sh /usr/local/bin/build
RUN chmod 755 /usr/local/bin/build
ENTRYPOINT ["/usr/local/bin/build"]
