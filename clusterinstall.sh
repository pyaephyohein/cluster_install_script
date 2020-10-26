apt update -y
apt upgrade -y
apt install vim
apt install docker.io -y
echo "Enter HostName"
read hostname
hostnamectl set-hostname $hostname
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" > /etc/apt/sources.list.d/kubernetes.list
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
apt update -y
apt install -y kubeadm=1.17.1-00 kubelet=1.17.1-00 kubectl=1.17.1-00
apt-mark hold kubelet kubeadm kubectl
systemctl enable docker.service
systemctl restart docker.servce
