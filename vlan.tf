#  Terraform configuration that will create (3) new VLAN's within the same network domain
#  while using /24 space that is spaced out for expansion to /23 as part of the testing
#  changes to the VLAN configuration via upadated Terraform files

resource "ddcloud_vlan" "dmz-vlan" {
  name                 = "${var.vlan_dmzname}"
  description          = "This is an automated Terraform VLAN designated for DMZ hosts"
  networkdomain        = "${ddcloud_networkdomain.networkdomain.id}"
  ipv4_base_address    = "192.168.0.0"
  ipv4_prefix_size     = 24
  depends_on           = ["ddcloud_networkdomain.networkdomain"]
}

resource "ddcloud_vlan" "trust-vlan" {
  name                 = "${var.vlan_trustname}"
  description          = "This is an automated Terraform VLAN designated for TRUST hosts"
  networkdomain        = "${ddcloud_networkdomain.networkdomain.id}"
  ipv4_base_address    = "192.168.2.0"
  ipv4_prefix_size     = 24
  depends_on           = ["ddcloud_networkdomain.networkdomain"]
}

resource "ddcloud_vlan" "utility-vlan" {
  name                 = "${var.vlan_utilityname}"
  description          = "This is an automated Terraform VLAN designated for UTILITY hosts"
  networkdomain        = "${ddcloud_networkdomain.networkdomain.id}"
  ipv4_base_address    = "192.168.4.0"
  ipv4_prefix_size     = 24
  depends_on           = ["ddcloud_networkdomain.networkdomain"]
}
