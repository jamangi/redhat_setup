# https://kerneltalks.com/howto/how-to-enable-repository-using-subscription-manager-in-rhel/
sudo yum update -y
sudo yum install subscription-manager
sudo subscription-manager 
# sudo yum install gcc openssl-devel bzip2-devel libffi-devel
sudo subscription-manager register --username <username> \
--password <password> --auto-attach
