#!/bin/bash

ping -c 1 -q google.com >&/dev/null;

if [ $? -eq 0 ]; then

	echo "[+] Grab a CUP of Coffee :D"
	printf "\n"
	sudo apt update -y
	sudo apt install git -y
	sudo apt install tor -y

	sudo git clone https://github.com/Und3rf10w/kali-anonsurf.git

	cd kali-anonsurf
	sudo chmod +x installer.sh
	sudo ./installer.sh
	cd ..
	sudo chmod +x bin/toripbounce
	sudo chmod +x bin/stip
	sudo cp bin/toripbounce /usr/bin/
	sudo cp bin/stip /usr/bin/
	sudo rm -rf kali-anonsurf

	printf "\n"
	echo "[+] All Done Now you can run this with toripbounce commmand !"
	printf "\n"
	echo "Warning Please run sudo stip command after you stop toripbounce"
else
    echo "[-] Please connect with Internet Connection !"
fi
