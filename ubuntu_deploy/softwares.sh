# Update & upgrade
sudo apt-get update -y && sudo apt-get upgrade -y

# Git
sudo apt install git -y

# Vim
sudo apt install vim -y

# Browser: Chrome
sudo dpkg -i google-chrome-stable_current_amd64.deb

# ssh-key: https://stackoverflow.com/questions/3659602/bash-script-for-generating-ssh-keys
cd ~ && mkdir .ssh
cd ~/.ssh
ssh-keygen -t rsa -N "" -f id_dsa
cd ~
ssh-add

# DB: postgres: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-postgresql-on-ubuntu-16-04
sudo apt-get install postgresql postgresql-contrib -y
sudo apt-get install postgresql-client -y
sudo apt-get install postgresql-client-common -y
# https://stackoverflow.com/questions/28253681/you-need-to-install-postgresql-server-dev-x-y-for-building-a-server-side-extensi
sudo apt-get install libpq-dev -y
sudo apt-get install python-psycopg2 python3-psycopg2 -y
sudo -u postgres -H -- psql -c "CREATE USER ubuntu WITH PASSWORD 'ubuntu';" # Change your password here!
sudo -u postgres -H -- psql -c "CREATE DATABASE ubuntu OWNER ubuntu;"
sudo -u postgres -H -- psql -c "GRANT ALL PRIVILEGES ON DATABASE ubuntu TO ubuntu;"

# Python: virtualenv
sudo apt-get install python-dev python-pip libxml2-dev libxslt1-dev zlib1g-dev libffi-dev libssl-dev -y
sudo apt-get install python3 python3-dev -y
sudo apt install python-pip -y
sudo pip install --upgrade pip
sudo pip install virtualenv


# Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https -y
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update -y
sudo apt-get install sublime-text -y

# ss: https://github.com/shadowsocks/shadowsocks-qt5/wiki/Installation/ad41c8b09981f50a7fea71bb647de2e4c70d3cb2
sudo add-apt-repository ppa:hzwhuang/ss-qt5 -y
sudo apt-get update -y
sudo apt-get install shadowsocks-qt5 -y
