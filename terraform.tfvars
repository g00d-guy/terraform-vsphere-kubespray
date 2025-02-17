#===============================================================================
# VMware vSphere configuration
#===============================================================================

# vCenter IP or FQDN #
vsphere_vcenter = "vctrsrv00.kupivip.local"

# vSphere username used to deploy the infrastructure #
vsphere_user = "administrator@vsphere.local"

# vSphere password
vsphere_password = "Qwerty12345_"

# Skip the verification of the vCenter SSL certificate (true/false) #
vsphere_unverified_ssl = "true"

# vSphere datacenter name where the infrastructure will be deployed #
vsphere_datacenter = "Varshavskoe"

# vSphere cluster name where the infrastructure will be deployed #
vsphere_drs_cluster = "Common"

# vSphere resource pool name that will be created to deploy the virtual machines #
vsphere_resource_pool = "K8S"

# Enable anti-affinity between the Kubernetes master virtual machines. This feature require a vSphere enterprise plus license #
vsphere_enable_anti_affinity = "false"

# vSphere username used by the vSphere cloud provider #
vsphere_vcp_user = "k8s-vcp@vsphere.local"

# vSphere cloud provider password
vsphere_vcp_password = "Qwerty12345_"

# vSphere datastore name where the Kubernetes persistant volumes will be created #
vsphere_vcp_datastore = "FAS2650-6TB-DS02"

#===============================================================================
# Global virtual machines parameters
#===============================================================================

# Username used to SSH to the virtual machines #
vm_user = "ubuntu"

# The linux distribution used by the virtual machines (ubuntu/debian/centos/rhel) #
vm_distro = "ubuntu"

# The prefix to add to the names of the virtual machines #
vm_name_prefix = "k8s-"

# The name of the vSphere virtual machine and template folder that will be created to store the virtual machines #
vm_folder = "K8S"

# The datastore name used to store the files of the virtual machines #
vm_datastore = "FAS2650-6TB-DS02"

# The vSphere network name used by the virtual machines #
vm_network = "VLAN 1101 (Kubernetes)"

# The netmask used to configure the network cards of the virtual machines (example: 24)#
vm_netmask = "24"

# The network gateway used by the virtual machines #
vm_gateway = "172.16.172.1"

# The DNS server used by the virtual machines #
vm_dns_addr = "10.10.205.11,10.10.25.12"

# The DNS search order
vm_dns_search = "infra.kng,kupivip.local"

# The domain name used by the virtual machines #
vm_domain = "infra.kng"

# The vSphere template the virtual machine are based on #
vm_template = "Templates/Ubuntu-18.04"

# Use linked clone (true/false)
vm_linked_clone = "false"

#===============================================================================
# Master node virtual machines parameters
#===============================================================================

# The number of vCPU allocated to the master virtual machines #
vm_master_cpu = "2"

# The amount of RAM allocated to the master virtual machines #
vm_master_ram = "4096"

# Interface on master nodes
vm_master_iface = "eth0"

# The IP addresses of the master virtual machines. You need to define 3 IPs for the masters #
vm_master_ips = {
  "0" = "172.16.172.33"
  "1" = "172.16.172.34"
  "2" = "172.16.172.35"
#  "3" = "172.16.172.36"
#  "4" = "172.16.172.37"
}

#===============================================================================
# Worker node virtual machines parameters
#===============================================================================

# The number of vCPU allocated to the worker virtual machines #
vm_worker_cpu = "8"

# The amount of RAM allocated to the worker virtual machines #
vm_worker_ram = "16392"

# Interface on worker nodes
vm_worker_iface = "eth0"

# The IP addresses of the master virtual machines. You need to define 1 IP or more for the workers #
vm_worker_ips = {
  "0"  = "172.16.172.38"
  "1"  = "172.16.172.39"
  "2"  = "172.16.172.40"
  "3"  = "172.16.172.41"
  "4"  = "172.16.172.42"
#  "5"  = "172.16.172.43"
#  "6"  = "172.16.172.44"
#  "7"  = "172.16.172.45"
#  "8"  = "172.16.172.46"
#  "9"  = "172.16.172.47"
#  "10" = "172.16.172.48"
#  "11" = "172.16.172.49"
#  "12" = "172.16.172.52"
}

#===============================================================================
# HAProxy load balancer virtual machine parameters
#===============================================================================

# The number of vCPU allocated to the load balancer virtual machine #
vm_haproxy_cpu = "2"

# The amount of RAM allocated to the load balancer virtual machine #
vm_haproxy_ram = "2048"

# Interface on haproxy nodes
vm_haproxy_iface = "eth0"

# The IP address of the load balancer floating VIP #
vm_haproxy_vip = "172.16.172.30"

# The IP address of the load balancer virtual machine #
vm_haproxy_ips = {
  "0" = "172.16.172.31"
  "1" = "172.16.172.32"
}

#===============================================================================
# Redhat subscription parameters
#===============================================================================

# If you use RHEL 7 as a base distro, you need to specify your subscription account #
rh_subscription_server = "subscription.rhsm.redhat.com"
rh_unverified_ssl = "false"
rh_username = ""
rh_password = ""

#===============================================================================
# Kubernetes parameters
#===============================================================================

# The Git repository to clone Kubespray from #
k8s_kubespray_url = "https://github.com/kubernetes-sigs/kubespray.git"

# The version of Kubespray that will be used to deploy Kubernetes #
k8s_kubespray_version = "v2.11.0"

# The Kubernetes version that will be deployed #
k8s_version = "1.16.0"

# The overlay network plugin used by the Kubernetes cluster #
k8s_network_plugin = "weave"

# If you use Weavenet as an overlay network, you need to specify an encryption password #
k8s_weave_encryption_password = "yDvHkDfV54"

# The DNS service used by the Kubernetes cluster (coredns/kubedns) #
k8s_dns_mode = "coredns"
