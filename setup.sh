# Install Pyenv
sudo apt update
sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev
curl https://pyenv.run | bash
echo -e 'export PYENV_ROOT="$HOME/.pyenv"\nexport PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo -e 'eval "$(pyenv init --path)"\neval "$(pyenv init -)"' >> ~/.bashrc
exec "$SHELL"
pyenv install 3.10.13
pyenv global 3.10.13


# Setup Libraries
git clone https://github.com/coqui-ai/TTS.git
cd TTS
pip install -e .[all,dev,notebook]
pip install numpy==1.23.5 
cd ..
wget https://github.com/skywalker290/wav_files/raw/main/obama.wav