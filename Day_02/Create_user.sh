#!/bin/bash

read -p "Enter username: " username

echo "your username is $username"

sudo useradd -m $username

echo "New user added"