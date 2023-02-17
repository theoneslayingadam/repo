apt update && apt install sudo && DEBIAN_FRONTEND=noninteractive apt install sddm -y && apt install konsole && apt install fluxbox && wget https://raw.githubusercontent.com/theoneslayingadam/repo/main/startup && cp startup /home/user/.fluxbox/startup" >> /home/user/.bashrc

read -p "Do you want to start sddm (yes/no) " yn

case $yn in 
	yes ) echo ok, we will proceed;;
	no ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac

# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install -f ./google-chrome-stable_current_amd64.deb 
