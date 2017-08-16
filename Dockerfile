FROM alpine:latest

MAINTAINER Kazuto Kusama <jacopen@gmail.com>

ENV RANCHER_COMPOSE_VERSION=v0.12.5
ENV RANCHER_CLI_VERSION=v0.6.3

RUN apk add --quiet --no-cache ca-certificates curl unzip && \
		curl -sSL "https://github.com/rancher/rancher-compose/releases/download/${RANCHER_COMPOSE_VERSION}/rancher-compose-linux-amd64-${RANCHER_COMPOSE_VERSION}.tar.gz" | tar xzp -C /usr/local/bin/ --strip-components=2 && \
		curl -sSL "https://github.com/rancher/cli/releases/download/${RANCHER_CLI_VERSION}/rancher-linux-amd64-${RANCHER_CLI_VERSION}.tar.gz" | tar xzp -C /usr/local/bin/ --strip-components=2 && \
		chmod +x /usr/local/bin/rancher && \
		chmod +x /usr/local/bin/rancher-compose

WORKDIR /workspace

CMD ["/bin/sh"]

