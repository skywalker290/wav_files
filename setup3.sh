sudo apt update -y
sudo apt upgrade -y
sudo apt-get update -y
sudo apt-get upgrade -y

# For Nvidia Graphic Drivers
sudo apt-get install ubuntu-drivers-common -y
sudo ubuntu-drivers install -y

sudo apt install unzip ffmpeg -y
 
sudo apt-get install nginx -y
sudo systemctl start nginx -y
sudo systemctl enable nginx -y

git clone https://github.com/skywalker290/wav_files.git
git clone https://github.com/skywalker290/Server.git 
chmod +x wav_files/setup.sh wav_files/setup2.sh Server/server_refresh.sh
cd wav_files
./setup.sh

# could need a break
./setup2.sh

cd Server/models/v1/
chmod +x download_model.sh
./download_model.sh
cd ~

cd Server/
sed -i "s/<PUBLIC_IP>/$(curl -s ifconfig.me)/g" nginx/PUBLIC_IP
mv nginx/PUBLIC_IP nginx/$(curl -s ifconfig.me)
sudo cp nginx/* /etc/nginx/sites-enabled/
sudo cp myapp.service /etc/systemd/system/myapp.service
sudo systemctl start myapp
sudo systemctl enable myapp



# Run wav_files/setup.sh and setup2.sh
# Run Server/server_refresh.sh




