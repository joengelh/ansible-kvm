# Ansible-KVM

KVM Automation with Ansible and Python

Requirements:
slaves:
  - install centos 8 minimal install

master
  - install centos 8 workstation
  - download anydesk

su
echo mypassword | anydesk --set-password
echo "[daemon]
WaylandEnable=false" > /etc/gdm3/custom.conf
reboot

ssh-keygen
share key with gitlab
git clone git@gitlab.jhamacher.de:Engelhardt/ansible-kvm.git
run primary setup script

#________________________________________________________________
Roles:
hypervisor
- add-user
- add-bridge
- install-pkg
- install-kvm
- install-cockpit
slave
- mount storage
master
- share storage
- load isos
woke
- wake workers
