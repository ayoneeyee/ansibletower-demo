echo $(date) " - Starting Script"

wget https://github.com/mglantz/ansibletower-demo/raw/master/ansible-tower-setup-latest.tar.gz
gunzip ansible-tower-setup-latest.tar.gz
tar xvf ansible-tower-setup-latest.tar
cd ansible-tower-setup-3.0.3
wget https://raw.githubusercontent.com/mglantz/ansibletower-demo/master/scripts/inventory -O inventory.new
cp inventory inventory.org
mv inventory.new inventory
sh ./setup.sh




