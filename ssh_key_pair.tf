resource "mgc_ssh_keys" "instances_key" {
  name = var.name
  key  = var.key
}
output "instances_key" {
  value = mgc_ssh_keys.instances_key
}
