#!/bin/bash
VAR2="web"
VAR1="mobile"
if [ "$1" = "$VAR2" ];
then
	echo "You are executing npm of $VAR2"
	rm -rf node-modules
	rm -r package-lock.json
	cp web-package.json  package.json 
	npm install && cp package.json web-package.json && cp package-lock.json web-package-lock.json
elif [ "$1" = "$VAR1" ];
then
	echo "You are executing npm of $VAR1"
	rm -rf node-modules
	rm -r package-lock.json
	cp mobile-package.json  package.json 
	npm install && cp package.json mobile-package.json && cp package-lock.json mobile-package-lock.json  	
else
	echo "Please mention what you want to run."		
fi	

