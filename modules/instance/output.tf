output "instance_ids" {
  value = aws_instance.Altschool[*].id
}
