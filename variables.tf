#  Declare usage of variables in tandem with GoCD and Terraform pre-requisites
#
#    - Variables are to be set as empty
#    - GoCD will export the variables using the "environment variable" fields in its display
#    - All variables MUST BE prefixed with TF_VAR_variable_name in GoCD AND
#    - The prefix declaration is truncated in the variables.tf file or just variable_name

variable "username" {} #Matches to TF_VAR_username
variable "password" {} #Matches to TF_VAR_password
variable "region" {} #Matches to TF_VAR_region
variable "networkdomain_name" {} #Matches to TF_VAR_networkdomain_name
