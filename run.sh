apt update && apt-get update && apt-get install tigervnc-scraping-server git -y  && apt install sudo xvfb screen python3-pip -y && apt install -y software-properties-common && apt install -y konsole && apt install -y fluxbox && wget https://raw.githubusercontent.com/theoneslayingadam/repo/main/startup && mkdir /home/user/.fluxbox && cp startup /home/user/.fluxbox/startup
mkdir tools
wget https://raw.githubusercontent.com/theoneslayingadam/repo/main/stopdisplay.sh -O tools/stopdisplay.sh
screen -S xvfb -d -m bash -c "xvfb-run -f /root/.Xauthority -n 1 startfluxbox"
# echo "user    ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
echo -e "passwd\npasswd\nn"  | vncpasswd
x0vncserver -passwordfile ~/.vnc/passwd -display :1
pip install lastversion
lastversion download https://github.com/novnc/noVNC -o novnc.tar.gz
tar -xvzf novnc.tar.gz
screen -S novnc -d -m bash -c "./no*/utils/novnc_proxy --vnc localhost:5901 --listen localhost:8080"
export DISPLAY=:1
screen -S konsole -d -m bash -c "konsole"
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
ssh -R 80:localhost:8080 nokey@localhost.run
rm startup run1.sh run.sh
