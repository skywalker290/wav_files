# Update all the Packages and drivers 
sudo apt update -y
sudo apt upgrade -y
sudo apt-get update -y
sudo apt-get upgrade -y

# For Nvidia Graphic Drivers
sudo apt-get install ubuntu-drivers-common -y
sudo ubuntu-drivers install -y

# Install Required Packages
sudo apt install unzip ffmpeg -y
sudo apt-get install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

# Clone Project Repositories from Github
git clone https://github.com/skywalker290/RealVC.git  # Repository For RVC cloning files
git clone https://github.com/skywalker290/wav_files.git # Repository For TTS Setup files
git clone https://github.com/skywalker290/Server.git  # Repository For Flask Server

# Setup Scripts for Each Part of Project
chmod +x wav_files/setup.sh wav_files/setup2.sh Server/server_refresh.sh RealVC/setup.sh

# Executing TTS Setup File 
cd wav_files
./setup.sh
cd ~


# Execute Next File 02.sh