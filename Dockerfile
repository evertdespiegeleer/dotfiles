FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y curl zsh git build-essential procps

RUN chsh -s $(which zsh)

SHELL ["/bin/zsh", "-c"]

WORKDIR /home/ubuntu

RUN useradd -u 8877 ubuntu

RUN mkdir -p ~/ubuntu/.dotfiles
RUN chown -R ubuntu:ubuntu ~/
COPY --chown=ubuntu ./ /home/ubuntu/.dotfiles

USER ubuntu

RUN ~/.dotfiles/script/bootstrap

CMD ["zsh"]