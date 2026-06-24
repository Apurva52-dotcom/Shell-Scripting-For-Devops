#!/bin/bash


<<comments

Deploy of the Django app
and handle the code for errors
that is the error handling

comments

code_clone() {
	echo "Clonning the Django app......"
	git clone https://github.com/LondheShubham153/django-notes-app.git
}


install_requirements() {
	echo "Installing Dependencies"
	sudo apt install docker.io
	sudo apt install nginx
}



required_restarts() {
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
       
}

deploy() {
	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}

echo "******** DEPLOYMENT STARTED ********"
if ! code_clone;then
        echo "the code directory already exixts"
        cd django-notes-app
fi # we have handle the fatal issue over here

if ! install_requirements;then
        echo "Intallation Failed"
        exit 1
fi

if ! required_restarts;then
	echo " system fault handles"
	exit 1
fi
deploy

echo "******** DEPLOYMENT DONE ********"
