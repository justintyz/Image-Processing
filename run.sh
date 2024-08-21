#!/bin/bash

# Download the ZIP file from Google Drive
echo "Downloading images.zip from Google Drive..."
curl -c ./cookie -s -L "https://drive.google.com/uc?export=download&id=11hg55-dKdHN63yJP20dMLAgPJ5oiTOHF" > /dev/null | curl -Lb ./cookie "https://drive.google.com/uc?export=download&confirm=$(awk '/download/ {print $NF}' ./cookie)&id=11hg55-dKdHN63yJP20dMLAgPJ5oiTOHF" -o images.zip && sudo rm -rf cookie

# Unzip the file
echo "Unzipping images.zip..."
unzip images.zip

# Move into the images folder
cd images

# Delete the .DS_Store file if it exists in the current directory
echo "Removing .DS_Store file..."
rm -f .DS_Store

# Move back to the original directory
cd ..

# Install Python dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt

# Run the Python script
echo "Processing images..."
python3 process_images.py

# Clean up
echo "Cleaning up..."
rm images.zip

echo "Done!"