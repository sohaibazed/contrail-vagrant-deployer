# ![alt text](/images/cfm-top.png) Bare Metal Integration Testbed setup (1vQFX and 6 VMs)


![Web Console](/images/cfm-1vqfx-5srv-topology.png)


The main code of this repository is taken from [Juniper/vqfx10k-vagrant](https://github.com/Juniper/vqfx10k-vagrant) to create a Testbed for TSN testing.

* 1 vQFX 10K
* 6 VMs CentOS 7.5 
  * 1 Provision VM
  * 1 Contrail Controller
  * 2 Compute Nodes
  * 1 TSN node
  * 1 Physical Machine
 
**Prerequisites**: A host machine with Ubuntu/CentOS OS preinstalled with Vagrant & VirtualBox SW.


```bash
host> git clone https://gitlab.com/sohaibazed/contrail-vagrant-deployer
host> cd contrail-vagrant-deployer/tor-integration-5srv/
host> vagrant status
host> vagrantup
```

Download contrail-ansible-deployer.tar.gz file and place it inside the folder. By default without making any change in "Vagrantfile" above topology will be created. You can change MGMT and Ctrl+Data Subnet in Vagrantfile as needed.

```bash
$subnet_mgmt = "192.168.100"
$subnet_ctrl_data= "172.16.1"
```

### References

* <https://github.com/Juniper/contrail-ansible-deployer/wiki>
* <https://github.com/Juniper/vqfx10k-vagrant>