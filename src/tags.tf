locals {
  expires = tostring(timeadd(timestamp(), "${var.expires}h"))
  deploy_tags = {
    Environment   = local.workspace
    Created       = timestamp()
    Expires = local.expires
    expireOn = local.expires

  }

}
