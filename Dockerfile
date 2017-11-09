FROM atlassian/default-image:latest

CMD ["sudo", "npm", "install", "-g", "npm"]
CMD ["sudo", "npm", "install", "-g", "npm"]
RUN sudo apt-get install jq

RUN mkdir -p /opt/atlassian/pipelines/agent/build
WORKDIR /opt/atlassian/pipelines/agent/build

RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN ./awscli-bundle/install -b ~/bin/aws
RUN export PATH=~/bin:$PATH
CMD ["aws", "--version"]
