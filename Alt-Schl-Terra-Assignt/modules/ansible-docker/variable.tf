variable "docker_container_name" {
  description = "Name of the Docker container to run"
  default     = "my_container"
}

variable "docker_image" {
  description = "Docker image to run"
  default     = "nginx"
}
