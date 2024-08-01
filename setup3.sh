sudo apt update
sudo apt upgrade
sudo apt-get update
sudo apt-get upgrade

sudo apt-get install ubuntu-drivers-common
sudo ubuntu-drivers install
sudo apt install unzip ffmpeg
sudo apt-get install nginx
sudo systemctl start nginx
sudo systemctl enable nginx
nvidia-smi

git clone https://github.com/skywalker290/wav_files.git
git clone https://github.com/skywalker290/Server.git 
chmod +x wav_files/setup.sh wav_files/setup2.sh Server/server_refresh.sh

cd Server/models/v1/
chmod +x download_model.sh
./download_model.sh
cd ~
cd Server/
sed -i "s/<PUBLIC_IP>/$(curl -s ifconfig.me)/g" nginx/PUBLIC_IP
mv nginx/PUBLIC_IP nginx/$(curl-s ifconfig.me)
sudo cp nginx/* /etc/nginx/sites-enabled/
sudo cp myapp.service /etc/systemd/system/myapp.service
sudo systemctl start myapp
sudo systemctl enable myapp


# Run wav_files/setup.sh and setup2.sh
# Run Server/server_refresh.sh




