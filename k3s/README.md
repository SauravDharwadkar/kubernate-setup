#k3s master - X nodes

Requirements

https://www.vagrantup.com/downloads

https://vagrant-libvirt.github.io/vagrant-libvirt/installation.html#ubuntu--debian

### To start
`sudo vagrant up`

### start with multiple nodes and specific distro
 i'm using generic/ubuntu2004 becouse i've previusly downloaded in my machine
`sudo DISTRO=ubuntu2004 NUM_NODES=2 vagrant up`

### kubectl connection config can be found at data/k3s.yaml
this will work from project dir
you can export to env and kubectl based on folder location
`KUBECONFIG=./data/k3s.yaml kubectl get nodes`

# Dashboard
`KUBECONFIG=./data/k3s.yaml kubectl proxy`
`http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/`

token stored in data/dashboard-token
### To destroy
`sudo vagrant destroy `

#### remove contents from data folder
`rm -rf data/*` 


### warning
script may only work in vagrant env need to update sudo/root permission if you using want to use outside 