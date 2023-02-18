apt update && apt install sudo && DEBIAN_FRONTEND=noninteractive -y apt install sddm && apt install -y konsole && apt install -y fluxbox && wget https://raw.githubusercontent.com/theoneslayingadam/repo/main/startup && cp startup /home/user/.fluxbox/startup >> /home/user/.bashrc
add-apt-repository ppa:mozillateam/ppa
echo '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001

Package: firefox
Pin: version 1:1snap1-0ubuntu2
Pin-Priority: -1
' | sudo tee /etc/apt/preferences.d/mozilla-firefox
apt install firefox
# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install -f ./google-chrome-stable_current_amd64.deb 
