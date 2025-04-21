instances= {
  frontend = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  }
  catalogue = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  }
  mangodb = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  }
  cart = {
    ami_id        = "ami-09c813fb71547fc4f"
    instance_type = "t3.small"
  }
}
vpc_security_group_ids = ["sg-07b6cb1ebb35644ea"]
env = "prod"
