FROM php:7.4-cli-alpine

COPY ssh_config /etc/ssh/ssh_config

RUN apk update \ 
    && apk add rsync \
    && apk add openssh \
    && apk add curl

RUN curl -LO https://deployer.org/deployer.phar && \
    mv deployer.phar /usr/local/bin/dep && \
    chmod +x /usr/local/bin/dep

RUN apk add --update nodejs nodejs-npm

CMD ['dep']
