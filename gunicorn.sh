# https://kerneltalks.com/howto/how-to-enable-repository-using-subscription-manager-in-rhel/
# repo connection: https://access.redhat.com/solutions/253273
sudo yum update -y
export http_proxy="proxy.internal.t-mobile.com:9090"
export https_proxy="proxy.internal.t-mobile.com:9090"
sudo yum -y install subscription-manager
sudo subscription-manager config --server.proxy_hostname="10.154.199.8"
sudo subscription-manager config --server.proxy_port=9090
sudo subscription-manager register --username rubyshadows --password redhat13577
sudo subscription-manager list --available --all 
# Need to connect to a repo - to get rhpython36 (already have python 2.7)
# --pool=<pool id> obtained from "list --available --all" command
sudo subscription-manager attach --pool=8a85f99970453685017069a885f775e3
sudo yum -y install gcc openssl-devel bzip2-devel libffi-devel
cd /usr/src
sudo wget https://www.python.org/ftp/python/3.7.4/Python-3.7.4.tgz
sudo tar xzf Python-3.7.4.tgz
sudo cd Python-3.7.4
sudo ./configure --enable-optimizations
sudo make altinstall
sudo rm /usr/src/Python-3.7.4.tgz
python3.7 -V