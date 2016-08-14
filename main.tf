# Vars
variable "do_token" {}
variable "ssh_key_file" {}

# Provider
provider "digitalocean" {
  token = "${var.do_token}"
}

# Create a new SSH key
resource "digitalocean_ssh_key" "default" {
  name       = "Digital Ocean SSH Key (bug)"
  public_key = "${file("${var.ssh_key_file}.pub")}"
}
