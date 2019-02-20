# Docker container for rclone
FROM ubuntu
RUN apt-get update
RUN apt-get install -y curl unzip zip man
RUN curl https://rclone.org/install.sh | bash
RUN groupadd -g 1001 user
RUN useradd -r -u 1001 -g user user
RUN ln -s /home /Users
USER user
