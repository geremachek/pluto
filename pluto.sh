#!/bin/bash

if [ "$EUID" -ne 0 ]
then 
	printf "\033[31;1mPlease Run As Root\033[0m\n"
	exit
fi


default() {
	sudo mv pluto /usr/bin/pluto
	printf "\033[32;1mPluto Added To Path!\033[0m\n"
	touch ~/.plutorc
	printf "\n# This .plutorc file was generated by pluto.sh\n\n" >> ~/.plutorc
	printf "# Customization\n\n" >> ~/.plutorc
	printf "sel=rev\n" >> ~/.plutorc
	printf "theme=default\n\n" >> ~/.plutorc
	printf "# Bindings\n\n" >> ~/.plutorc
	printf "exit=q\n" >> ~/.plutorc
	printf "del=d\n" >> ~/.plutorc
	printf "home=~\n" >> ~/.plutorc
	printf "\033[32;1m~/.plutorc Generated!\033[0m\n"
	mkdir ~/.pluto
	mkdir ~/.pluto/themes
	printf "\033[32;1m~/.pluto and ~/.pluto/themes Created\033[0m\n"
	touch ~/.pluto/themes/default.plut
	printf"file=0\ndir=13\ncwd-color=0\ncwd-format=bold" > ~/.pluto/themes/default.plut
	touch ~/.pluto/themes/dolly.plut
	printf"file=221\ndir=245\ncwd-color=250\ncwd-format=bold" > ~/.pluto/themes/dolly.plut
	touch ~/.pluto/themes/dwarf.plut
	printf"file=250\ndir=53\ncwd-color=197\ncwd-format=bold" > ~/.pluto/themes/dwarf.plut
	touch ~/.pluto/themes/oxide.plut
	printf"file=209\ndir=245\ncwd-color=250\ncwd-format=bold" > ~/.pluto/themes/oxide.plut
	printf"\033[32;1mThemes Generated!\033[0m\n"
	printf"\033[34;1mInstallation Finished!\033[0m\n"
	exit
}

minimal() {
	sudo mv pluto /usr/bin/pluto
	printf "\033[32;1mPluto Added To Path!\033[0m\n"
	touch ~/.plutorc
	printf "\033[32;1m~/.plutorc Created!\033[0m\n"
	mkdir ~/.pluto
	mkdir ~/.pluto/themes
	printf "\033[32;1m~/.pluto and ~/.pluto/themes Created\033[0m\n"
	printf "\033[34;1mInstallation Finished!\033[0m\n"
	exit
}

clear
printf "\n \033[0m1 \033[0m\033[34mDefault Install\033[0m\n\n"
printf "\033[0m2 \033[0m\033[34mMinimal Install\033[0m\n\n\n"
printf "Option: "
read -k1 opt

if [ "$opt" == "1"]
then
	default
elif [ "$opt" == "2" ]
then
	minimal

fi
