resource "null_resource" "test" {
    connection {
    type     = "ssh"
    user     = "root"
    private_key = var.ssh_private_key
    host     = var.host_ip
  }
    provisioner "remote-exec" {
    inline = [
     "echo 'hello'"
    ]
    timeout = 100
  }
}
