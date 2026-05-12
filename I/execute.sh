#!/bin/bash
python3 --version

# chmod +x ./execute.sh (change the permission of the file)

if [ ! -d ".venv"]; then
    python3 -m venv .venv
    source .venv/bin/activate
else
    echo "Virtual environment already exists. Activating it."
    source .venv/bin/activate
fi


# Run the Python script