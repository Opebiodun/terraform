resource "null_resource" "ansible_docker_setup" {
  provisioner "local-exec" {
    command = "./ansible-docker/install_ansible_docker.sh"
  }
}

