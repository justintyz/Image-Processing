# Image-Processing
Credits for this project to Google IT Automation with Python (Coursera).
This repository contains the files required to download images from Google drive, process them using the Python Imaging Library and conver them to desired format.

## Table of Content
1. [Installation](#installation)
2. [Usage](#usage)
3. [Features](#features)

## Installation
First, clone the repository to the local machine and navigate to the directory on the command line.
```bash
git clone https://github.com/justintyz/Image-Processing.git
cd Image-Processing
```
Next, install the required package managers
```bash
sudo apt install python3-pip
```

## Usage
Run the bash script. This script will perform the following steps:
1. Download images.zip from the specified path to the folder on Google Drive
2. Unzips the images.zip
3. Delete redundancies in the new images folder (i.e. .DS_Store)
4. Install all required Python dependencies
5. Run the Python script to process the downloaded images
6. Remove the images.zip from the folder
```bash
./run.sh
```

## Features
This project processes images by:
1. Minimising their resolution from 192x192 pixel to 128x128 pixel
2. Rotating the images by 90 degree anti-clockwise to straighten them
3. Changing their formats from .tiff to .jpeg 


