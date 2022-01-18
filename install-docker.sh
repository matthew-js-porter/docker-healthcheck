# Install curl
apt-get install curl -y
update-ca-certificates --fresh

# Install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh || {
    # Fix for arm/v6 https://markmcgookin.com/2019/08/04/how-to-install-docker-on-a-raspberry-pi-zero-w-running-raspbian-buster/
    cd /tmp
    curl -k https://packagecloud.io/Hypriot/rpi/packages/raspbian/buster/containerd.io_1.2.6-1_armhf.deb/download.deb -o download.deb
    dpkg -i download.deb
    rm download.deb
    #systemctl restart docker
}
