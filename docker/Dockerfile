FROM rust:alpine3.16

LABEL maintainer="gianiaz@gmail.com"

USER root

RUN adduser -D -h /home/gianiaz gianiaz

 ## SSH et al
RUN apk --no-cache add \
        curl \
        git \
        sudo \
        zsh

USER gianiaz
 ## ZSH / OhMyZsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
COPY zsh/zsh-config.sh /home/gianiaz/.zshrc
ENV TERM xterm-256color

WORKDIR /home/gianiaz/app
