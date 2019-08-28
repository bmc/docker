FROM ubuntu:18.04

LABEL org.clapper.version="1.0.0"

RUN groupadd -g 1001 user
RUN useradd -r -u 1001 -g user --create-home user

RUN apt-get update
RUN apt-get install --no-install-recommends -y \
    texlive \
    texlive-latex-recommended \
    texlive-latex-extra \
    texlive-xetex \
    lmodern \
    ttf-ubuntu-font-family \
    python3.7 \
    virtualenv python-virtualenv \
    locales \
    plantuml \
    pandoc-citeproc \
    curl
RUN rm -rf /var/lib/apt/lists/*

RUN curl -LO \
  https://github.com/jgm/pandoc/releases/download/2.7/pandoc-2.7-1-amd64.deb && \
  dpkg -i pandoc-2.7-1-amd64.deb && \
  rm pandoc-2.7-1-amd64.deb

RUN mkdir -p /usr/local/bin

COPY entrypoint.sh /tmp
RUN sed 's/USERNAME/user/g' </tmp/entrypoint.sh >/usr/local/bin/entrypoint
RUN chmod 755 /usr/local/bin/entrypoint

USER user:user

RUN virtualenv -p python3 /home/user/env

ENV PATH="/home/user/env/bin:${PATH}"

ENTRYPOINT ["/usr/local/bin/entrypoint"]
