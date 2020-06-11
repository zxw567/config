apt update
apt upgrade -y
apt autoremove -y
apt autoclean
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"
apt install docker-ce
echo "docker run -d --privileged --net=host -v {local_path_to_chap_secrets}:/etc/ppp/chap-secrets mobtitude/vpn-pptp"
