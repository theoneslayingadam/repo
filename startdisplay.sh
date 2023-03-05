screen -S xvfb -d -m bash -c "xvfb-run -f /root/.Xauthority -n 1 startfluxbox"
x0vncserver -passwordfile ~/.vnc/passwd -display :1
export DISPLAY=:1
screen -S novnc -d -m bash -c "./no*/utils/novnc_proxy --vnc localhost:5901 --listen localhost:8080"
konsole
