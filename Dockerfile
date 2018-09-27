FROM debian:unstable

COPY . /root/purelude
RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG 'C.UTF-8'
ENV LC_ALL 'C.UTF-8'
ENV PATH '/root/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'

WORKDIR /root/purelude

RUN apt update
RUN apt install -y apt-transport-https curl netbase make xz-utils
RUN apt update
RUN apt dist-upgrade -y
RUN apt autoremove -y
RUN apt clean -y
RUN mkdir -p ~/.local/bin
RUN wget https://github.com/commercialhaskell/stack/releases/download/v1.7.1/stack-1.7.1-linux-x86_64.tar.gz -O /tmp/stack.tar.gz
RUN mkdir /tmp/stack-download
RUN tar -xzf /tmp/stack.tar.gz -C /tmp/stack-download
RUN chmod +x /tmp/stack-download/stack-1.7.1-linux-x86_64/stack
RUN mv /tmp/stack-download/stack-1.7.1-linux-x86_64/stack /root/.local/bin/stack
RUN stack build --no-system-ghc --only-configure --no-terminal
