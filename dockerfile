FROM node:latest
MAINTAINER Martin Souchal <souchal@apc.in2p3.fr>
RUN npm install --silent -g markdown-pdf \
 && rm -rf ~/.npm/cache/*\
 && mkdir -p /opt/docs
WORKDIR /opt/docs
ENV NODE_PATH /usr/local/lib/node_modules
ENV OPENSSL_CONF=/dev/null
CMD ["/bin/bash"]