FROM node:8.9
LABEL maintainer="Thanh Nam <nam.tt@neo-lab.vn>"

ADD package.json yarn.lock tsconfig.json /tmp/
RUN cd /tmp && \
	yarn install && \
	npm rebuild node-sass
