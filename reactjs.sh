#!/bin/bash
VAR2="start-web"
VAR1="start-mobile"
VAR3="run-android"
VAR4="run-ios"

if [ "$1" = "$VAR2" ];
then
	npm start
	cp package.json  web-package.json 
elif [ "$1" = "$VAR1" ];
then
	cp mobile-package.json  package.json 
	react-native start
elif [ "$1" = "$VAR3" ];
then
	cp mobile-package.json  package.json 
	react-native run-android
	cp package.json  mobile-package.json 
elif [ "$1" = "$VAR4" ];
then
	cp mobile-package.json  package.json 
	react-native run-ios
	cp package.json  mobile-package.json 
else
	echo "Please mention what you want to run."		
fi	

