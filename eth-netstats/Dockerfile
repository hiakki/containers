FROM node:lts-alpine3.11
RUN apk add git
RUN git clone https://github.com/EthereumEx/eth-netstats.git /eth-netstats
WORKDIR /eth-netstats
RUN npm install
RUN npm install -g grunt-cli
RUN grunt all

EXPOSE 3000
ENTRYPOINT ["npm","start"]
