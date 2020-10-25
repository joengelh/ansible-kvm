#cd ~/
#rm -rf *
#sudo yum -y install epel-release;
#sudo yum -y install ansible;
#cd 
#git clone git@gitlab.jhamacher.de:Engelhardt/ansible-kvm.git;
#git clone git@gitlab.jhamacher.de:Engelhardt/one-world-tower.git;
#gir clone git@gitlab.jhamacher.de:Engelhardt/miniatur-rechenzentrum.git;
#cd ansible-kvm;
#git checkout dev;
#cd ..;
ssh-copy-id -f -i ~/.ssh/id_rsa.pub root@192.168.2.28;
ssh-copy-id -f -i ~/.ssh/id_rsa.pub root@192.168.2.111;
ssh-copy-id -f -i ~/.ssh/id_rsa.pub root@192.168.2.104;
ssh-copy-id -f -i ~/.ssh/id_rsa.pub root@192.168.2.110;
#cd ansible-kvm;
#ansible-playbook preparation.yml -i inventory/onprem.ini;
