# f5xc-appstack-proxmox

Experimental deployment of 3-node Appstack site in proxmox with optional worker nodes.

Clone this repo: `git clone --recurse-submodules https://github.com/mwiget/f5xc-appstack-proxmox`

You need to create a vm template in proxmox from the F5 XC VER CE kvm image and reference it in main.tf 

Copy terraform.tfvars.example to terraform.tfvars, then update the file with credentials 
and number of desired master (1 or 3) and worker nodes (0..128).

## Prerequisites

- A directory /var/lib/vz/snippets must exist on the proxmox server (to store cloud-init data per node)
- A F5 XC ver image template must exist


```
terraform init
terraform plan
terraform apply
```

Verify cluster with

```
$ ./cluster_info.sh

Kubernetes control plane is running at https://volterra-corp.staging.volterra.us/api/k8s/namespaces/system/site/marcel-prox1

To further debug and diagnose cluster problems, use 'kubectl cluster-info dump'.

NAME   STATUS   ROLES        AGE     VERSION
m0     Ready    ves-master   37m     v1.23.14-ves
m1     Ready    ves-master   37m     v1.23.14-ves
m2     Ready    ves-master   38m     v1.23.14-ves
w0     Ready    <none>       8m56s   v1.23.14-ves
w1     Ready    <none>       8m45s   v1.23.14-ves
```
