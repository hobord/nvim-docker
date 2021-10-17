# nvim-docker

Docker build with nvim 5.1 base on ubuntu:focal

```
docker pull ghcr.io/hobord/nvim-docker:master

docker run -it --rm -v $(pwd):/workspace ghcr.io/hobord/nvim-docker:master 

nvim

```

Some vim plugin:
- nvim-cmp
- telescope
- lsp, symbols-outline, lsp_signature, lsp_kind, lsp-trouble 
- dap, dap-ui, golang dlv preconfigured
- treesitter
- bufferline
- galaxyline
- nvim-tree
- zen-mode
- gruvbox-flat
- which-key
- fterm
- diffview
- ...

Apps:
- git
- zsh
- fzf
- make
- gcc 
- bat
- vifm


