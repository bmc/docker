FROM bclapper/pandoc:latest

LABEL org.clapper.version="1.0.0"

USER user

RUN /bin/bash -c '. /home/user/env/bin/activate ; pip install jupyter nbconvert'

ENTRYPOINT ["/usr/local/bin/entrypoint"]
