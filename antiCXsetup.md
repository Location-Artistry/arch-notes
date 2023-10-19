- Install ruby, gems, and jekyll
- https://jekyllrb.com/docs/
- Tove assist, took some time but built successfully
- following github unstructions
- https://docs.github.com/en/pages/setting-up-a-github-pages-site-with-jekyll/creating-a-github-pages-site-with-jekyll
- gem install bundler
- https://bundler.io/
-   [http://www.fascinatingcaptain.com/projects/automate-chromebook-fixes-for-linux/](http://www.fascinatingcaptain.com/projects/automate-chromebook-fixes-for-linux/)
- [http://www.fascinatingcaptain.com/](http://www.fascinatingcaptain.com/)
- [https://medium.com/@enthu.cutlet/how-to-mount-google-drive-on-linux-windows-systems-5ef4bff24288](https://medium.com/@enthu.cutlet/how-to-mount-google-drive-on-linux-windows-systems-5ef4bff24288)

### New Install Location-Artistry github
- installing gh cli for easier autrhnication
- Needed to make sure enough space available
- FInd missing dependencies: bundle exec jekyll serve
- gem install minima
- gem install http_parser.r
- gem install github-pages


## working on new jekyll theme 
- https://youtu.be/F8iOU1ci19Q
- that site is the jamz
- following steps, cloned repo locally, now trying to install vscode
- [VSCode Install Linux](https://code.visualstudio.com/docs/setup/linux)
- Tried different options, following MSFT instruct worked, download then install!
- Tight on space but now have VSCode running on chromebook!
- goto directory $bundle
- Success!
- bundle exec jekyll s
- YEah the site is running locally!

- Create a post with date as format
- Wow finally figured out how to put icons on taskbar antiX!

### Scratch
- toverobie
- id206719

### clearSpace
- https://itsfoss.com/free-up-space-ubuntu-linux/
- sudo apt-get autoremove
- sudo du -sh /var/cache/apt re

- sudo apt-get clean
- du -sh ~/.cache/thumbnails
- rm -rf ~/.cache/thumbnails/*

## pi code-server
- working with ssh
- ps aux | grep
- https://coder.com/blog/access-your-vs-code-environment-from-any-device
- http://raspberrypi.local:8080/
- /lib/systemd/system
- sudo systemctl start coder-web.service
- https://phoenixnap.com/kb/ssh-to-connect-to-remote-server-linux-or-windows
- ssh -N -L 8080:127.0.0.1:8080 [pi]@raspberrypi # finally got it right!
- sudo apt-get install openssh-server ii.
- ccod
- # this is taking 15-20 min!
- sudo nano /etc/ssh/sshd_config
- sudo service ssh start
- ssh localhost
- ssh -N -L 8080:127.0.0.1:8080 pi@localhost # this is the correct one! @localhost

## SSH Setup Continues
- sudo apt-get install -y python3-websockets
-  ~/.yarn/bin/code-server
- ~/.local/share/code-server
- https://github.com/coder/code-server/issues/758
- ~/.config/code-server/ # location of config.yaml
- /lib/systemd/system #location of .service files
- PATH="$(yarn global bin):$PATH" # add code server to path
-  https://coder.com/docs/code-server/latest/link

## piSynth
- think i lost some stuff here
- aconnect -o
- aconnect 24:0 128:0
- 

## vim!!!
- sudo apt-get install neovim
- vim works great but not is VSCode

## postgres pi!
- sudo -u postgres psql
- https://medium.com/coding-blocks/creating-user-database-and-adding-access-on-postgresql-8bfcd2f4a91e

## obsidian
check linux version:
-   Use the lsb_release -a command.
-   Use the /etc/lsb-release or /etc/os-release command.
-   Check the /etc/issue file.
-   Use the hostnamectl command.
```bash
Distributor ID:	Debian
Description:	Debian GNU/Linux 11 (bullseye)
Release:	11
Codename:	bullseye
```
#Debian is the rock on which Ubuntu is built

## googleDrive install
- https://linuxhint.com/install-google-drive-debian-11/
```bash
sudo apt install gnome-online-accounts
# would not allow executable
sudo apt remove gnome-online-accounts
# trying new site
```
https://github.com/PPC-scripts/access_cloud
```bash
wget https://raw.githubusercontent.com/PPC-scripts/access_cloud/master/access_cloud-antiX-v2.sh
sudo chmod +x access_cloud-antiX-v2.sh
sudo ./access_cloud-antiX-v2.sh
```


