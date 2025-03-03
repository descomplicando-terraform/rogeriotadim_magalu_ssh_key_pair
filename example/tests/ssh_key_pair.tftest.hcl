variables {
  name = "key-test"
}

run "create_ssh_key_pair" {
  command = apply

  assert {
    condition     = module.instances_key.instances_key.key != ""
    error_message = "invalid name"
  }

}
