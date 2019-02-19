# Docker container for AWS CLI.
FROM python:3
RUN apt-get update && apt-get install -y less zip unzip vim nano
#RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
#RUN unzip awscli-bundle.zip
#RUN ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
RUN pip install awscli
RUN groupadd -g 1001 bmc
RUN useradd -r -u 1001 -g bmc bmc
RUN ln -s /home /Users
USER bmc
