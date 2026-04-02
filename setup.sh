#!/bin/bash

# To update package list
sudo apt update

# to Install python and pip if it doesnt exist
sudo apt install -y python3 python3-pip python3-venv

# to remove broken venv if it exists
if [ -d "venv" ]; then
    echo "Removing old virtual environment..."
    rm -rf venv
fi

echo "Creating virtual environment..."
python3 -m venv venv

# to activate virtual environment and install dependencies
echo "Installing dependencies..."
source venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt


echo "Setup completed successfully!"
echo "To start the server, run: ./start_server.sh"
