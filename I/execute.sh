#!/bin/bash
python3 --version
g++ --version
# chmod +x ./execute.sh (change the permission of the file)

if [ ! -d ".venv" ]; then
    python3 -m venv .venv
    source .venv/bin/activate
    pip list
    pip install -r ./I/pylibs.txt
else
    echo "Virtual environment already exists. Activating it."
    source .venv/bin/activate
fi

deactivate
# Run the Python script