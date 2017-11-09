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

RUN npm install -g create-react-app
RUN npm install react
RUN npm install react-dom
RUN npm install react-router-dom
RUN npm install react-validation
RUN npm install firebase
RUN npm install bulma
RUN npm install immutability-helper
RUN npm install rc-slider
RUN npm install uuid
RUN npm install remarkable
RUN npm install classnames
