#!/bin/sh


echo "" > /etc/apt/sources.list.d/pve-enterprise.sources

echo "Types: deb" >> /etc/apt/sources.list.d/pve-enterprise.sources
echo "URIs: http://download.proxmox.com/debian/pve" >> /etc/apt/sources.list.d/pve-enterprise.sources
echo "Suites: trixie" >> /etc/apt/sources.list.d/pve-enterprise.sources
echo "Components: pve-no-subscription" >> /etc/apt/sources.list.d/pve-enterprise.sources
echo "Signed-By: /usr/share/keyrings/proxmox-archive-keyring.gpg" >> /etc/apt/sources.list.d/pve-enterprise.sources

apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade

