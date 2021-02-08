FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /tmp/

RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils dialog 2>&1 \
    && apt-get -y install --no-install-recommends \
        ca-certificates \
        git \
        lsb-release \
        curl \
        wget \
        unzip \
        ctags \
        bat \
        vifm \
        fzf \
        #ripgrep \
        gcc \
        make \
        python3-pip \
		# Clean up
    && apt-get autoremove -y \
    && apt-get clean -y

RUN wget https://github.com/extrawurst/gitui/releases/download/v0.11.0/gitui-linux-musl.tar.gz \
        && tar -xf gitui-linux-musl.tar.gz -C /usr/local/bin/

RUN wget https://github.com/wfxr/code-minimap/releases/download/v0.5.0/code-minimap-v0.5.0-x86_64-unknown-linux-musl.tar.gz \
        && tar -xf code-minimap-v0.5.0-x86_64-unknown-linux-musl.tar.gz -C /usr/local/bin/ --strip-components=1 code-minimap-v0.5.0-x86_64-unknown-linux-musl/code-minimap

RUN wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage \
        && chmod +x ./nvim.appimage \
        && ./nvim.appimage --appimage-extract \
        && cp -a ./squashfs-root/* / \
        && rm -Rf ./squashfs-root 

RUN pip3 install neovim-remote

COPY config /root/.config

RUN nvim -u ~/.config/nvim/plugins.vim -es --headless +PlugInstall +qall  2> /dev/null 1>/dev/null; exit 0 
RUN rm -Rf /tmp/* \
        && mkdir /workspace

WORKDIR /workspace
