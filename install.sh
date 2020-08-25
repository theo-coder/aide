#! /bin/bash

set -e

{
	sudo apt-get install mdp;
	sudo mkdir /var/docs;
	sudo cp ./docs/* /var/docs/;
	sudo ln -s ./aide /usr/bin/aide;

}||{
	echo "Une erreur est survenue !"
	exit
}
