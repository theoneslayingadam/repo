screen -X -S novnc kill
screen -X -S konsole kill
x0vncserver -kill :1
screen -X -S xvfb kill
