# Install curl
apt-get install curl -y
update-ca-certificates --fresh

# Install docker
curl -sL get.docker.com | bash || {
    # Fix for arm/v6 https://markmcgookin.com/2019/08/04/how-to-install-docker-on-a-raspberry-pi-zero-w-running-raspbian-buster/
    cd /tmp
    wget https://packagecloud.io/Hypriot/rpi/packages/raspbian/buster/containerd.io_1.2.6-1_armhf.deb/download.deb
    dpkg -i download.deb
    rm download.deb
    systemctl restart docker
}
