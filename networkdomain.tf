#  "Resource" section for "ddcloud_networkdomain" which defines how Terraform builds infrastructure
#  assets.  In this case, this resource creates network domains.

resource "ddcloud_networkdomain" "networkdomain" {
  name                 = "GoCD Test Domain - Linux"
  description          = "New network domain created via Terraform and GoCD via Windows"
  datacenter           = "NA12"
  plan                 = "ADVANCED"
}
