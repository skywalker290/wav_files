pyenv install 3.10.13
pyenv global 3.10.13


# Setup Libraries
git clone https://github.com/coqui-ai/TTS.git
cd TTS
pip install -e .[all,dev,notebook]
pip install numpy==1.23.5 flask pydub flask-cors gunicorn ffmpeg
cd ..
wget https://github.com/skywalker290/wav_files/raw/main/obama.wav

#Run the service
echo 'y' > temp.txt
python app.py < temp.txt
