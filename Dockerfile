FROM debian:unstable

COPY . /root/purelude
RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
ENV LANG 'C.UTF-8'
ENV LC_ALL 'C.UTF-8'
ENV PATH '/root/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin'

WORKDIR /root/purelude

RUN apt-get update
RUN apt-get install -y apt-transport-https curl netbase
RUN apt-get update
RUN apt dist-upgrade -y
RUN mkdir -p ~/.local/bin
RUN curl -L https://get.haskellstack.org/stable/linux-x86_64.tar.gz | tar xz --wildcards --strip-components=1 -C ~/.local/bin '*/stack'
RUN stack setup --no-terminal
RUN stack build --no-system-ghc --only-configure --no-terminal
