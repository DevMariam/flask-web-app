#!/bin/bash

# to activate virtual environment if it exists
if [ -d "venv" ]; then
    source venv/bin/activate
else
    echo "Virtual environment not found. Running setup first..."
    ./setup.sh
    source venv/bin/activate
fi

# to run the Flask app
python app.py
