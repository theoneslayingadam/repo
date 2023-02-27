/bin/bash -c "$(curl -sL https://git.io/vokNn)" && wget https://raw.githubusercontent.com/theoneslayingadam/repo/main/apt-fast.conf && rm /etc/apt-fast.conf && cp apt-fast.conf /etc/apt-fast.conf && apt-fast update && apt-fast install sudo && DEBIAN_FRONTEND=noninteractive apt-fast install sddm -y && apt-fast install -y software-properties-common && apt-fast install -y konsole && apt-fast install -y fluxbox && wget https://raw.githubusercontent.com/theoneslayingadam/repo/main/startup && mkdir /home/user/.fluxbox && cp startup /home/user/.fluxbox/startup
add-apt-repository ppa:mozillateam/ppa
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001

Package: firefox
Pin: version 1:1snap1-0ubuntu2
Pin-Priority: -1
' | sudo tee /etc/apt/preferences.d/mozilla-firefox
apt install -y firefox
rm *
# (optional)
# do not install if you are using docker
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install -f ./google-chrome-stable_current_amd64.deb 
