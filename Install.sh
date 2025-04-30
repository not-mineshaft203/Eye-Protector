#!/bin/bash

cat assets/.EYE_PROTECTOR_ASSET.txt
echo "made by Dev.Tahsin"
echo "Root is required to install necessary packages."
sudo -v || { echo "Failed to gain root access. Exiting."; exit 1; }

echo "Starting your installation process..."
echo "Fetching required packages..."
sudo apt update
sudo apt install -y espeak libnotify-bin

echo "Dependencies installed successfully!"

echo "Setting up assets..."
mv assets ./.assets
chmod +x .assets/.eyeprotector.sh
cp -p .assets/.eyeprotector.sh ~/
cp -p .assets/.EYE_PROTECTOR_ASSET.txt ~/

echo "Done!"
echo "You can now run the script with:"
echo "  ~/.eyeprotector.sh"
echo "Take care of your precious eyes! 🤲"
