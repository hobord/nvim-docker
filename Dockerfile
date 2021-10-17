FROM ubuntu:focal
ENV DEBIAN_FRONTEND=noninteractive
ENV LIBSQLITE=/usr/lib/x86_64-linux-gnu/

WORKDIR /tmp/

RUN apt-get update \
    && apt-get -y install --no-install-recommends apt-utils dialog 2>&1 \
    && apt-get -y install --no-install-recommends \
        ca-certificates \
        build-essential \
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
        sqlite3 \
		# Clean up
    && apt-get autoremove -y \
    && apt-get clean -y

COPY config /root/.config

RUN mkdir -p /root/.local/share/nvim/site/pack/packer/start/ \
    && git clone https://github.com/wbthomason/packer.nvim /root/.local/share/nvim/site/pack/packer/start/packer.nvim \
    #&& wget https://github.com/extrawurst/gitui/releases/download/v0.18.0/gitui-linux-musl.tar.gz \
    #&& tar -xf gitui-linux-musl.tar.gz -C /usr/local/bin/ \
    && wget https://github.com/neovim/neovim/releases/download/v0.5.1/nvim.appimage \
    && chmod +x ./nvim.appimage \
    && ./nvim.appimage --appimage-extract \
    && cp -a ./squashfs-root/* / \
    && pip3 install neovim-remote \
    && ln -s /usr/lib/x86_64-linux-gnu/libsqlite3.so.0 /usr/lib/x86_64-linux-gnu/libsqlite3.so \
    && mkdir /workspace \
    && rm -Rf /tmp/*

RUN nvim --headless -c 'autocmd User PackerComplete quitall' 2> /dev/null 1>/dev/null; exit 0 

WORKDIR /workspace
