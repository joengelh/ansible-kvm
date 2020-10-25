a= `sudo virsh dumpxml centos-vm-4 | grep "mac address" | awk -F\' '{ print $2}'`
arp -an | grep `$a`

