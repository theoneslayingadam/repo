apt update && useradd user && printf "user\nuser" | passwd user && usermod -a -G sudo user && apt install sudo && DEBIAN_FRONTEND=noninteractive apt install sddm -y && apt install wget -y && apt install konsole && apt install fluxbox && mkdir /home/user && chmod 777 /home/user && wget https://raw.githubusercontent.com/theoneslayingadam/repo/main/startup && echo "printf "cp startup /home/user/.fluxbox/startup" >> /home/user/.bashrc" >> run1.sh

read -p "Do you want to start sddm (yes/no) " yn

case $yn in 
	yes ) echo ok, we will proceed;;
	no ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac

# wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install -f ./google-chrome-stable_current_amd64.deb 
