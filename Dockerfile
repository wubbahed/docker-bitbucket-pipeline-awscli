FROM atlassian/default-image:latest

RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN sudo apt-get install jq
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -b ~/bin/aws
RUN export PATH=~/bin:$PATH
