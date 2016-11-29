#  Declare usage of variables in tandem with GoCD and Terraform pre-requisites
#
#    - Variables are to be set as empty
#    - GoCD will export the variables using the "environment variable" fields in its display
#    - All variables MUST BE prefixed with TF_VAR_variable_name in GoCD AND
#    - The prefix declaration is truncated in the variables.tf file or just variable_name

#  Variables in provider.tf file
variable "username" {} #Matches to TF_VAR_username
variable "password" {} #Matches to TF_VAR_password
variable "region" {} #Matches to TF_VAR_region

#  Variables in network.tf file
variable "datacenter" {} #Matches to TF_VAR_datacenter
variable "networkdomain_name" {} #Matches to TF_VAR_networkdomain_name

#  Variables in vlan.tf file
variable "vlan_dmzname" {} #Matches to TF_VAR_vlan_dmzname
variable "vlan_trustname" {} #Matches to TF_VAR_vlan_trustname
variable "vlan_utilityname" {} #Matches to TF_VAR_vlan_utilityname
