#!/bin/bash

cd /tmp

##
# GENERAL 
##

# network
apt-get install -y -q wget curl net-tools netcat tcpdump

# version control
apt-get install -y -q git
echo '[color]
	ui = true
[color "branch"]
	current = yellow bold
	local = green bold
	remote = cyan bold
[color "diff"]
	meta = yellow bold
	frag = magenta bold
	old = red bold
	new = green bold
	whitespace = red reverse
[color "status"]
	added = green bold
	changed = yellow bold
	untracked = red bold
' > /etc/gitconfig
cd /vagrant 
git config branch.master.rebase true
cd /tmp

# editors
apt-get install -y -q vim

# zip/unzip
apt-get install -y -q unzip zip

# Install htop 
apt-get install -y -q htop 

# Install packages needed to compile binaries
apt-get install -y -q python-software-properties build-essential autotools-dev automake pkg-config

# scripting 
apt-get install -y python-pip 


##
# ZSH
##

# Install zsh
apt-get install -y -q zsh

# Clone oh-my-zsh
if [ ! -d ~vagrant/.oh-my-zsh ]; then
  git clone https://github.com/robbyrussell/oh-my-zsh.git ~vagrant/.oh-my-zsh
fi

# Create a new zsh configuration from the provided template
cp ~vagrant/.oh-my-zsh/templates/zshrc.zsh-template ~vagrant/.zshrc

# Customize theme
sed -i -e 's/ZSH_THEME=".*"/ZSH_THEME="bira"/' ~vagrant/.zshrc

# add aliases
sed -i -e 's/# Example aliases/source ~\/.bash_aliases/gi' ~vagrant/.zshrc

# Set zsh as default shell
chsh -s /bin/zsh vagrant

##
# Maestro
##

cd /tmp

if [ ! -d "maestro-ng" ]; then
  git clone https://github.com/signalfuse/maestro-ng.git
  cd maestro-ng
  pip install . 
fi



##
# Docker
##

echo "DOCKER_OPTS=\"-H 127.0.0.1:4243\"" > /etc/default/docker
service docker restart
sleep 2

# build docker images here
# docker -H 127.0.0.1:4243 build -t rethinkdb /vagrant/docker/rethinkdb/


##
# Aliases
##

echo "
alias m='python -m maestro'
alias docker='docker -H 127.0.0.1:4243'
" > /home/vagrant/.bash_aliases


