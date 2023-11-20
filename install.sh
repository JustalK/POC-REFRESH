# Install git
apt-get install git
apt-get install libpcsclite1 libpcsclite-dev
apt-get install pcscd
npm install -g node-gyp


# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
source ~/.bashrc

# Install node
nvm install 20.9.0

# Install project
git clone https://github.com/JustalK/POC-REFRESH.git
cd POC-REFRESH
npm install

# Install sub project
npm run start
npm run sub-install