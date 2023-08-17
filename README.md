# My config

## TMUX
### Installer tmux
```bash
sudo apt install tmux
```

### Installer plugin tmux
 https://github.com/tmux-plugins/tpm

```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

## ALACRITTY
### Installer alacritty
https://github.com/alacritty/alacritty

Intallation de theme
https://github.com/alacritty/alacritty-theme

```bash
# We use Alacritty's default Linux config directory as our storage location here.
mkdir -p ~/.config/alacritty/themes
git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes


import:
 - ~/.config/alacritty/themes/themes/{theme}.yaml

```

## NEOVIM
### Installer neovim
https://neovim.io/

### Installation de Packer
https://github.com/wbthomason/packer.nvim

```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```