- Obsidian install worked perfectly in arch.
- Pacman -s obsidian  #holy smokes
- Did not have luck with Open Drive google access.

### Neovim
- sudo pacmin -S neovim
- sudo pacmin -S python-neovim

## neovimConfig
- Telescope
- COC

## devCOnfig
- tmux

[This i3 arch advice](https://low-orbit.net/arch-linux-how-to-install-i3-gaps)
```bash
#i3 install
sudo pacman -S i3-wm
#Missing dependencies i3 won't load
sudo pacman -S xorg-fonts dmenu i3status ttf-dejavu
sudo pacman -S xorg xorg-xinit xterm
sudo pacman -S xorg-server
# it was actually already working! :()
# start by 
PWR + ENTER #open terminal


* $mod + return: opens a new terminal  
* $mod + d: dmenu, minimal launcher, defaults with i3.  
* $mod + f: toggle fullscreen  
* $mod + shift + q: kills app  
* $mod + number: changes virtual desktop
```
### i3Config
- sudo pacman -S nitrogen

- Working here : [# Your guide to a damn light Arch Linux](https://toutiao.io/posts/262451/app_preview)
- giving up on i3 for now... But no need it was actually working!

## nerdFonts
https://www.behova.net/install-nerd-font-on-arch-linux/
trick to find hidden dirs in user home dir
```bash
ls -a 
cd .local
create /home/pi/.local/share/fonts 
copy and unzip nerd font
Pacman -S unzip
fc-cache -vf
```

## WSL Stuff
wth
[Cool WSL tmux neovim article](https://dev.to/nexxeln/my-developer-workflow-using-wsl-tmux-and-neovim-55f5)

Primeagen devSetup - https://about.sourcegraph.com/blog/dev-tool-time-theprimeagen

## tmux
- pacman -S tmux

## neovim
- copy and run command from vimplug for linux/neovim
- Add call plug#begin() and plug#end() in init.vim
- Plug 'git repo url for plugin'
- in nv command mode :PlugInstall 
- So far airline, NERDTree

## CoC
- https://dev.to/chand1012/how-to-install-node-on-linux-the-easy-way-3hm8
- install node and npm first

## ohMyZsh
- pacman -S zsh
- sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
- Installed zsh, ohMyZsh, Powerline10K

## python
- PlugInstall Jedi
- pacman -S python-pip
- pip install pandas
- May need to rework with nvim LSP

## NeuConfig
- LunarVim => GeoVim
- Jupyter-Vim !!!

## Prez
- Obsidian Advanced Slides
- Export as html => reveal.js
- Post to gitHub pages

## LunarVim
```javascript
// resolve global access issues
sudo npm i -g npm
```
```bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```
Abandon ship lunarVim!!!

## custom stuff
sudo pacman -S nitrogen #wallpaper settings
sudo pacman -S picom    #i3 transparency

## WIRELESS
#wifi #wireless #archConfig
- iwctl
- device list
- station wlan0 scan
- station wlan0 get-networks
- station connect 'Boyne Mountain'
quit & ping!!!

## terminal
- CTRL+SHIFT+C  #copy
- CTRL+SHIFT+V  #paste
- sudo pkill -KILL -u pi  #logout user

# screen
#screen #brightness
- xrandr --output eDP-1 --brightness 0.4
- sys/class/backlight/intel_backlight
- change backlight file 0-7812

## vim-Jupyter
- sudo pacman -S
Did not work, error with files
Also issues with pacmam -Syu upgrade file conflicts
- pip install jupyter
Seems to be working great
- starting up again
```bash
mkdir -p ~/.local/share/nvim/site/pack/git-plugins/start
git clone --depth 1 https://github.com/jupyter-vim/jupyter-vim.git ~/.local/share/nvim/site/pack/git-plugins/start/jupyter-vim
```

### #neovim LSP
- Several attempts to get nvim native LSP and cmp working
- Followed alpha2pi instructions but cmp wouldn't work
- Went with lsp-zero and seem to be having much success!
- LspInstall python: gave several options, chose pyright.
- "pyright" was successfully installed!
- Nice dialog popped up to confirm success

### #moreNeovim
- Installed nvim.comment 12-23-22 
- Watched Primeagen's vim setup video again, picked up some tips for remaps and plugin config in the lua/after folder
- Used prime setup for color.lua function, finally have transparency on nvim arch setup!
- Also added config for TreeSitter and seems to add much nicer syntax highlighting!
- Added some great remaps I've been thinking baout for a while: ';' for ':' to enter command mode 
- finally set the insert mode escape keys 'jk' 'kj'
- inoremap for insert and nnoremap for normal!

### #transparency
#archConfig
alacritty.yml
window:
    opacity: 0.8

### obsidian
Working on setting up Obsidian Kanban boards

### 08-26-2023

```bash
# fix Arch mirror's
pacman -Syyu
pacman -S neovim
# install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
# PackerSync and nvim looking great! TS working and LSP up!   

kitty.conf
# font changes appear to be working, now for transparency
# install picom
sudo pacman -S picom    

# websites for picom and i3:
```
- https://www.ejmastnak.com/tutorials/arch/picom/
- https://i3wm.org/docs/userguide.html#default_border

### chirpy starter
https://github.com/cotes2020/chirpy-starter
```bash
ruby -
# nothin
# jekyll install docs
https://jekyllrb.com/docs/installation/
sudo pacman -S ruby
sudo pacman -S rubygems
ruby -v
# output
ruby 3.0.6p216 (2023-03-30 revision 23a532679b) [x86_64-linux]
gem -v
# output
# 3.3.25
gcc -v
# output
# gcc version 13.2.1 20230801 (GCC)
sudo bundle
```
### ohmyzsh
Site for configuring autocomplete & syntax hilighting in Zsh:
https://gist.github.com/n1snt/454b879b8f0b7995740ae04c5fb5b7df
```bash 
sudo pacman -S  zsh-autosuggestions zsh-syntax-highlighting
```

### moreVim
Saving read only file:
```bash 
w !sudo tee % >/dev/null
# telescope media_files
sudo pacman -S chafa
```

### #files #usb
```bash
sudo fdsik -l
# list all partitions
df
# quick list of all disk blocks
sudo mount -t vfat  /dev/mmcblk0p1 /media
# seems to be method to mount sd card in arch
lsblk
# really nice way to show partitions 
sudo dmesg|tail
# recent os activity and disk mounting info!c
sudo pacman -Scc
# clears out entire cache, cleaned 4GB!
sudo pacman -Rns $(pacman -Qtdq)
# clears orphaned packages, .4 GB!
rm -rf ~/.cache/*
# clears user cache another .4 GB!
```

