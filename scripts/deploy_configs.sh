#!/usr/bin/bash 
if [[ $uid != root ]]
then
    echo "This provided to be run as root"
    exit 0
fi 
rootpath="/root/"
userpath="/home/debian/"
# Neovim config 
wget https://raw.githubusercontent.com/Ivanich41/AD-Vulnbox/main/configs/.vimrc -P $rootpath
wget https://raw.githubusercontent.com/Ivanich41/AD-Vulnbox/main/configs/.vimrc -P $userpath
chown debian:debian $userpath/.vimrc
# Tmux config 
wget https://raw.githubusercontent.com/Ivanich41/AD-Vulnbox/main/configs/.tmux.conf -P $rootpath
git clone https://github.com/tmux-plugins/tpm $rootpath/.tmux/plugins/tpm
wget https://raw.githubusercontent.com/Ivanich41/AD-Vulnbox/main/configs/.tmux.conf -P $userpath
git clone https://github.com/tmux-plugins/tpm $userpath/.tmux/plugins/tpm
chown debian:debian $userpath/.tmux.conf 

# Install init-network in Path
curl https://raw.githubusercontent.com/Ivanich41/AD-Vulnbox/main/scripts/init_network.sh > /usr/local/bin/init-network
chmod ugo+x /usr/local/bin/init-network
