FROM node:12-alpine3.9

LABEL Description="Deploy an application using the Balena CLI."

RUN apk update && apk add --no-cache --virtual .build-deps \
	libstdc++ \
	binutils-gold \
	curl \
	g++ \
	gcc \
	gnupg \
	libgcc \
	linux-headers \
	make \
	python \
	python3 \
	nodejs \
	nodejs-npm \
	git \
	openssh \
	bash

RUN npm install balena-cli -g --production --unsafe-perm

WORKDIR /

# COPY / .

CMD [ "node" ]
