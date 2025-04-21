module "ec2" {
  for_each = var.instances
  source = "./modules/ec2"

  ami_id = each.value["ami_id"]
  env    = var.env
  instance_type = each.value["instance_type"]
  # zone_id = var.zone_id
  name    = each.key
  vpc_security_group_ids = var.vpc_security_group_ids
}
