
# Setup RVC Files
cd ~/RealVC/
./setup.sh
cd ~


# Download the Indic-TTS Models
cd Server/models/v1/
chmod +x download_model.sh
./download_model.sh
cd ~

# Setup Public Proxy Using Nginx
cd Server/
sed -i "s/<PUBLIC_IP>/$(curl -s ifconfig.me)/g" nginx/PUBLIC_IP
mv nginx/PUBLIC_IP nginx/$(curl -s ifconfig.me)
sudo cp nginx/* /etc/nginx/sites-enabled/
cd ~

# Start the Server 
cd Server/
./server_refresh.sh
cd ~
