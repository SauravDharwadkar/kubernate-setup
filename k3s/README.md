#k3s master - X nodes

Requirements

https://www.vagrantup.com/downloads

https://vagrant-libvirt.github.io/vagrant-libvirt/installation.html#ubuntu--debian

### To start
`sudo vagrant up`

### start with multiple nodes and specific distro
 i'm using generic/ubuntu2004 becouse i've previusly downloaded in my machine
`sudo DISTRO=ubuntu2004 NUM_NODES=2 vagrant up`

### To destroy
`sudo vagrant destroy `
#### remove contents from data folder
`rm -rf data/*` 
