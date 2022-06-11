#! /bin/sh

# --- UPDATE ---

sudo add-apt-repository multiverse
sudo apt-add-repository ppa:fish-shell/release-3
sudo add-apt-repository ppa:agornostal/ulauncher
sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install wget gpg -y



# --- INSTALL ---

# snap
sudo snap install vlc kdenlive gimp gog-galaxy-wine godot arduino insomnia -y

# apt
sudo apt-get install steam gnome-tweaks tilix pidgin polybar fish nginx ulauncher qbittorrent qdirstat mangohud -y

#chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

# vscode
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code



# --- CONFIG ---

# nvidia drivers
sudo ubuntu-drivers install

# arduino config
sudo usermod -a -G dialout $USER

# fish shell config
sudo chsh -s /usr/local/bin/fish

# nginx config
sudo ufw allow 'Nginx HTTP'