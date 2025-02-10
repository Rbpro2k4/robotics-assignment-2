#!/bin/bash

# Enable error handling
set -e

# 1. Directory and File Setup
echo "Creating project directory structure..."
mkdir -p ../workspace/{docs,logs,data,scripts}

# 2. Initial File Creation
echo "Creating initial files..."
touch ../workspace/docs/initial_doc.txt
touch ../workspace/logs/initial_log.txt
touch ../workspace/data/initial_data.txt
touch ../workspace/scripts/initial_script.sh

# Add content to a welcome file
echo "Welcome to the Robotics Assignment Project!" > ../workspace/docs/welcome.txt

# 3. Set Permissions
echo "Setting file permissions for the script directory..."
chmod u+x ../workspace/scripts/initial_script.sh

# 4. Ownership Setup
echo "Setting ownership of the data directory..."
sudo chown $USER:$USER ../workspace/data/initial_data.txt

# 5. Directory and File Listing
echo "Project structure after setup:"
ls -R ../workspace

echo "Setup completed successfully!"
