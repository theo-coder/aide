#! /bin/bash

set -e

{
	sudo apt-get install mdp;
	sudo mkdir /var/docs;
	sudo cp ./docs/* /var/docs/;
	sudo cp ./aide /usr/bin/aide;

}||{
	echo "Une erreur est survenue !"
	exit
}
