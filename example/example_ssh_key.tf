resource "random_string" "random" {
  length  = 5
  special = false
}

module "instances_key" {
  source = "../"
  name   = "${var.name}-${random_string.random.result}"
  key    = file("./ssh/id_rsa.pub")
}


output "instances_key_name" {
  value = module.instances_key.instances_key.name
}
