#  "Resource" section for "ddcloud_server" which defines how Terraform builds infrastructure assets.


resource "ddcloud_server" "webapp-server" {
  name                 = "WEBAPP SERVER"
  admin_password       = "password"
  memory_gb            = 4
  cpu_count            = 2
  networkdomain        = "${ddcloud_networkdomain.networkdomain.id}"
  primary_adapter_ipv4 = "192.168.0.11"
  dns_primary          = "8.8.8.8"
  dns_secondary        = "8.8.4.4"
  os_image_name        = "CentOS 7 64-bit 2 CPU"

  disk {
    scsi_unit_id       = 0
    size_gb            = 10
  }

  auto_start = "FALSE"
  depends_on           = ["ddcloud_vlan.dmz-vlan"]
}

resource "ddcloud_server" "db-server" {
  name                 = "DB SERVER"
  admin_password       = "password"
  memory_gb            = 4
  cpu_count            = 2
  networkdomain        = "${ddcloud_networkdomain.networkdomain.id}"
  primary_adapter_ipv4 = "192.168.2.11"
  dns_primary          = "8.8.8.8"
  dns_secondary        = "8.8.4.4"
  os_image_name        = "CentOS 7 64-bit 2 CPU"

  disk {
    scsi_unit_id       = 0
    size_gb            = 10
  }

  auto_start = "FALSE"
  depends_on           = ["ddcloud_vlan.trust-vlan"]
}

resource "ddcloud_server" "utility-server" {
  name                 = "UTILITY SERVER"
  admin_password       = "password"
  memory_gb            = 4
  cpu_count            = 2
  networkdomain        = "${ddcloud_networkdomain.networkdomain.id}"
  primary_adapter_ipv4 = "192.168.4.11"
  dns_primary          = "8.8.8.8"
  dns_secondary        = "8.8.4.4"
  os_image_name        = "CentOS 7 64-bit 2 CPU"

  disk {
    scsi_unit_id       = 0
    size_gb            = 10
  }

  auto_start = "FALSE"
  depends_on           = ["ddcloud_vlan.utility-vlan"]
}
