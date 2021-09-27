#!/bin/bash
VAR2="web"
VAR1="mobile"
if [ $2 ];
then
	if [ "$1" = "$VAR2" ];
	then
		cp web-package.json  package.json 
		npm install $2 --save
		cp package.json  web-package.json 
	elif [ "$1" = "$VAR1" ];
	then
		cp mobile-package.json  package.json 
		npm install $2 --save
		cp package.json  mobile-package.json
	else
		echo "Please mention where you want to run."		
	fi
else
	echo 'Please run this command by reffring this for web sudo npm-install web "<package-name>" /n for mobile sudo npm-install mobile "<package-name>"'		
fi	

