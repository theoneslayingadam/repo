apt update && apt install sudo && DEBIAN_FRONTEND=noninteractive apt install sddm -y && apt install -y software-properties-common && apt install -y konsole && apt install -y fluxbox && wget https://raw.githubusercontent.com/theoneslayingadam/repo/main/startup && mkdir /home/user/.fluxbox && cp startup /home/user/.fluxbox/startup
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
