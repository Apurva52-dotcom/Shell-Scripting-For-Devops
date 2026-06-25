#!/bin/bash


<<task

Deploying the django app and
handle the erros

task

code_clone() {
	echo "Cloning the Django app"
	git clone https://github.com/LondheShubham153/django-notes-app.git
}

install_requirements() {
	echo "Installing Dependencies"
	sudo apt-get install docker.io nginx -y docker-compose
	#compose use for executing multiple things togtherlyy

}

required_restart() {
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker 
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy() {
	docker build -t notes-app .
	#docker run -d -p 8000:8000 notes-app:latest
        docker-compose up -d
}

echo "********DEPLOYMENT STARTED********"
if ! code_clone;then
       echo "The code directory already exists"
       cd django-notes-app
fi 

if ! install_requirements;then
	echo "Installation Failed"
	exit 1
fi

if ! required_restart;then
	echo "System fault Identified"
	exit 1
fi

if ! deploy;then
	echo "Deplomyment Failed,mailing to admin"
	# sendmail
	exit 1
fi
echo "********DEPLOYMENT DONE***********"

