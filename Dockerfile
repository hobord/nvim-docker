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
        zsh \
		# Clean up
    && apt-get autoremove -y \
    && apt-get clean -y

COPY config /root/.config

RUN wget https://github.com/extrawurst/gitui/releases/download/v0.11.0/gitui-linux-musl.tar.gz \
        && tar -xf gitui-linux-musl.tar.gz -C /usr/local/bin/ \
        && wget https://github.com/wfxr/code-minimap/releases/download/v0.5.0/code-minimap-v0.5.0-x86_64-unknown-linux-musl.tar.gz \
        && tar -xf code-minimap-v0.5.0-x86_64-unknown-linux-musl.tar.gz -C /usr/local/bin/ --strip-components=1 code-minimap-v0.5.0-x86_64-unknown-linux-musl/code-minimap \
        && wget https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage \
        && chmod +x ./nvim.appimage \
        && ./nvim.appimage --appimage-extract \
        && cp -a ./squashfs-root/* / \
        && pip3 install neovim-remote \
        && mkdir /workspace \
        && rm -Rf /tmp/*

RUN nvim -u ~/.config/nvim/plugins.vim -es --headless +PlugInstall +qall  2> /dev/null 1>/dev/null; exit 0 

WORKDIR /workspace
