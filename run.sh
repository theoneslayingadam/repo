apt update && apt-get update && apt-get tigervnc-scraping-server && apt install sudo xvfb screen python3-pip && apt install -y software-properties-common && apt install -y konsole && apt install -y fluxbox && wget https://raw.githubusercontent.com/theoneslayingadam/repo/main/startup && mkdir /home/user/.fluxbox && cp startup /home/user/.fluxbox/startup
screen -S xvfb -d -m bash -c "xvfb-run -l -f /root/.Xauthority -n 1 startfluxbox"
echo -e "passwd\npasswd" \  | passwd
x0vncserver -passwordfile ~/.vnc/passwd -display :1
screen -S -d -m bash -c "x0vncserver -passwordfile ~/.vnc/passwd -geometry 1366x657+0+0 -display :1"
pip install lastversion
lastversion download https://github.com/novnc/noVNC
tar -xvzf v*
screen -S novnc-d -m bash -c "./no*/utils/novnc_proxy --vnc localhost:5901 --listen localhost:8080"
ssh -R 80:localhost:8080 nokey@localhost.run
# DEBIAN_FRONTEND=noninteractive apt install sddm -y
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
