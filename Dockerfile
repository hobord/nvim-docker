FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /tmp/

RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils dialog 2>&1 \
    && apt-get -y install \
        ca-certificates \
        git \
        lsb-release \
        curl \
        wget \
        unzip \
        ctags \
		# Clean up
    && apt-get autoremove -y \
    && apt-get clean -y

RUN wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage \
        && chmod +x ./nvim.appimage \
        && ./nvim.appimage --appimage-extract \
        && cp -a ./squashfs-root/* / \
        && rm -Rf ./squashfs-root 

COPY config /root/.config

