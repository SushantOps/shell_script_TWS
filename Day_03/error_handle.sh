#!/bin/bash

create_directory() {

    mkdir demo
}

if ! create_directory; then
    echo "The code is being exited ad directory is already exists"
    exit 1
fi

echo "This should not use because code is interupted"
