#!/bin/bash

<< task
Deloy an django app 
and handle the code for errors
task

code_clone(){
    echo "Cloning the Django app..."
    if [ -d "django-notes-app" ]; then
        echo "The code directory already exists. Skipping clone."
    else
        git clone https://github.com/LondheShubham153/django-notes-app.git || {
            echo "Failed the clone code."
            return 1
        }
}

install_reqirements(){

    echo "Installing Dependencies..."
    sudo apt-get update && apt-get install -y docker.io  nginx docker-compose || {
        echo "Failed to install dependencies."
        return 1
    }

}

required_restarts() {
    echo "Performing required restarts..."
    sudo chown "$USER" /var/run/docker.sock || {
        echo "Failed to change ownership of docker.sock."
        return 1
    }


    sudo systemctl enable docker
    sudo systemctl enable nginx
    #udo systemctl restart docker
}

deploy() {
    echo "Building and deploying the Django app..."
    docker build -t notes-app . && docker-compose up -d || {
        echo "Failed to build and deploy the app."
        return 1
    }
}

# main deployment script
echo "**************** Deploymeent started ***************"

if ! code_clone; then
    cd django-notes-app || ecit 1
fi 

if ! install_reqirements; then
    exit 1
fi 

# Perform required restarts
if ! required_restarts; then
    exit 1
fi

# Deploy the app
if ! deploy; then
    echo "Deployment failed. Mailing the admin..."
    # Add your sendmail or notification logic here
    exit 1
fi

echo "********** DEPLOYMENT DONE *********"