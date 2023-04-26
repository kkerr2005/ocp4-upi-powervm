### PowerVC Details
auth_url                    = "https://192.168.200.217"
user_name                   = "root"
password                    = "Bluechip123!"
tenant_name                 = "OCPPOC"
domain_name                 = "Default"
openstack_availability_zone = "regionone"

network_name = "vlan_513"

### OpenShift Cluster Details

bastion   = { instance_type = "b1e93fc9-dcc7-47ce-9aee-d4e5f57e8e6f", image_id = "ff640374-17bf-498e-8e83-d6388df6f31e", "count" = 1 }
bootstrap = { instance_type = "<bootstrap-compute-template>", image_id = "<image-uuid-rhcos>", "count" = 1 }
master    = { instance_type = "<master-compute-template>", image_id = "<image-uuid-rhcos>", "count" = 3 }
worker    = { instance_type = "<worker-compute-template>", image_id = "<image-uuid-rhcos>", "count" = 2 }
# With all optional attributes
# bastion                     = {instance_type    = "<bastion-compute-template>",   image_id    = "<image-uuid-rhel>",   availability_zone = "<availability zone>",  "count"   = 1, fixed_ip_v4 = "<IPv4 address>"}
# bootstrap                   = {instance_type    = "<bootstrap-compute-template>", image_id    = "<image-uuid-rhcos>",  availability_zone = "<availability zone>",  "count"   = 1}
# master                      = {instance_type    = "<master-compute-template>",    image_id    = "<image-uuid-rhcos>",  availability_zone = "<availability zone>",  "count"   = 3, data_volume_count  = 0, data_volume_size  = 100}
# worker                      = {instance_type    = "<worker-compute-template>",    image_id    = "<image-uuid-rhcos>",  availability_zone = "<availability zone>",  "count"   = 2, data_volume_count  = 0, data_volume_size  = 100}


rhel_username                   = "root" #Set it to an appropriate username for non-root user access
public_key_file                 = "data/id_rsa.pub"
private_key_file                = "data/id_rsa"
rhel_subscription_username      = "<subscription-id>"       #Leave this as-is if using CentOS as bastion image
rhel_subscription_password      = "<subscription-password>" #Leave this as-is if using CentOS as bastion image
rhel_subscription_org           = ""                        # Define it only when using activationkey for RHEL subscription
rhel_subscription_activationkey = ""                        # Define it only when using activationkey for RHEL subscription

connection_timeout = 45
jump_host          = ""

### OpenShift Installation Details

openshift_install_tarball = "https://mirror.openshift.com/pub/openshift-v4/ppc64le/clients/ocp/stable/openshift-install-linux.tar.gz"
openshift_client_tarball  = "https://mirror.openshift.com/pub/openshift-v4/ppc64le/clients/ocp/stable/openshift-client-linux.tar.gz"
pull_secret_file          = "data/pull-secret.txt"

cluster_domain    = "ibm.com"  # Set domain to nip.io or xip.io if you prefer using online wildcard domain and avoid modifying /etc/hosts
cluster_id_prefix = "test-ocp" # Set it to empty if just want to use cluster_id without prefix
cluster_id        = ""         # It will use random generated id with cluster_id_prefix if this is not set
#fips_compliant             = false   # Set it true if you prefer to use FIPS enable in ocp deployment

### Misc Customizations

#network_type               = "SRIOV"
#scg_id                     = "df21cec9-c244-4d3d-b927-df1518672e87"
#sriov_vnic_failover_vfs    = 1
#sriov_capacity             = 0.02

#enable_local_registry      = false  #Set to true to enable usage of local registry for restricted network install.
#local_registry_image       = "docker.io/ibmcom/registry-ppc64le:2.6.2.5"
#ocp_release_tag            = "4.4.9-ppc64le"
#ocp_release_name           = "ocp-release"
#release_image_override     = ""


#helpernode_repo            = "https://github.com/RedHatOfficial/ocp4-helpernode"
#helpernode_tag             = ""
#install_playbook_repo      = "https://github.com/ocp-power-automation/ocp4-playbooks"
#install_playbook_tag       = ""

#installer_log_level        = "info"
#ansible_extra_options      = "-v"
#ansible_repo_name          = "ansible-2.9-for-rhel-8-ppc64le-rpms"
#dns_forwarders             = "1.1.1.1; 9.9.9.9"
#rhcos_pre_kernel_options   = []
#rhcos_kernel_options       = []
#chrony_config              = true
#chrony_config_servers      = [ {server = "0.centos.pool.ntp.org", options = "iburst"}, {server = "1.centos.pool.ntp.org", options = "iburst"} ]

#setup_squid_proxy          = false

## N/A when `setup_squid_proxy = true`, set `setup_squid_proxy = false` when using external proxy.
#proxy                      = {server = "hostname_or_ip", port = "3128", user = "pxuser", password = "pxpassword"}


# mount_etcd_ramdisk  = false


#storage_type                = "nfs"
#volume_size                 = "300" # Value in GB
#volume_storage_template     = ""

#upgrade_version            = ""
#upgrade_channel            = ""  #(stable-4.x, fast-4.x, candidate-4.x) eg. stable-4.11
#upgrade_image               = "" #quay.io/openshift-release-dev/ocp-release@sha256:xyz.."
#upgrade_pause_time         = "90"
#upgrade_delay_time         = "600"

#eus_upgrade_version        = ""
#eus_upgrade_channel        = ""  #(stable-4.x, fast-4.x, candidate-4.x, eus-4.x) eg. stable-4.11
#eus_upgrade_image          = ""  #(quay.io/openshift-release-dev/ocp-release@sha256:xyz..)
#eus_upstream               = ""  #https://ppc64le.ocp.releases.ci.openshift.org/graph

#cni_network_provider       = "OVNKubernetes"
#cluster_network_cidr        = "10.128.0.0/14"
#cluster_network_hostprefix  = "23"
#service_network             = "172.30.0.0/16"
#private_network_mtu         = "1450"

#luks_compliant              = false # Set it true if you prefer to use LUKS enable in OCP deployment
#luks_config                 = [ { thumbprint = "", url = "" } ]
#luks_filesystem_device      = "/dev/mapper/root"  #Set the Path of device to be luks encrypted
#luks_format                 = "xfs"  #Set the Format of the FileSystem to be luks encrypted
#luks_wipe_filesystem         = true  #Configures the FileSystem to be wiped
#luks_device                 = "/dev/disk/by-partlabel/root"  #Set the Path of luks encrypted partition
#luks_label                  = "luks-root"  #Set the value for user label of luks encrypted partition
#luks_options                = ["--cipher", "aes-cbc-essiv:sha256"]  #Set List of luks options for the luks encryption
#luks_wipe_volume             = true  #Configures the luks encrypted partition to be wiped
#luks_name                   = "root" #Set the value for the user label of Filesystem to be luks encrypted
