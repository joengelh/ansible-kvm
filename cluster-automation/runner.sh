mastercpu=$(ssh master@192.168.2.113 uptime | grep -oh "\:\ [0-9]\.[0-9]." | grep -oh "[0-9]\.[0-9].")
echo "$mastercpu"
radical=$(cat radical-cpu.txt)
if [ "$mastercpu" > "$radical" ]
then 
    wakeonlan 90:1B:0E:85:78:33
    while ( ! ping -c 1 slave1 2>&1 >/dev/null ); do
      echo -n .
      sleep 1
    done
    echo slave1 has been woken up
    migrant=$(sudo virsh list --name --state-running | tail -n 2)
    sudo virsh migrate -- live $migrant qemu+ssh:/ansible@master  
fi
