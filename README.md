# Kubernetes Proxmox Time Sync

I have created this Ansible playbook to easily configure NTP sync between Kubernetes nodes (VM's) and their Proxmox host nodes.
I am using Ubuntu as a Kubernetes host OS, there's probably some NTP config available for you Talos nerds.

This could've also been done using DHCP, but I am using static IP's in my lab. Someone please make some sort of operator for this??? Might do it myself later.

## How to apply

Configure the inventory in [inventory.ini](inventory.ini) and then run [run.sh](run.sh) or execute
```shell
ansible-playbook -i inventory.ini playbook.yml
```

Running [`diffcheck.sh`](diffcheck.sh) runs a `date -u` in parallel which isn't too accurate, but lets you gets a rough estimate.
I made this to see if it has any impact on runnning PostgreSQL on Kubernetes using CloudNativePG.


## License

Uhh I think it's GNU GPLv3 licensed. Check [LICENSE](LICENSE). I've copied it from choosealicense :)
I wont sue anyways, just give me a good referral lmao.

