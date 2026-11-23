locals {
  lz         = var.landing_zone
  env        = local.lz.tags["env"]
  suffix     = substr(sha1(local.lz.subscription_id), 0, 6) # globally unique names
  short_name = replace(var.app_name, "-", "")

  # Set on every resource. Otherwise the platform's inherit-tag policy adds them and
  # every run would plan to remove them again.
  tags = merge(local.lz.tags, { app = var.app_name })
}