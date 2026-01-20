output "ansible_controller_public_ip" {
  value = aws_instance.ansible_controller.public_ip
}

output "web_private_ip" {
  value = aws_instance.web.private_ip
}

output "monitoring_private_ip" {
  value = aws_instance.monitoring.private_ip
}
output "web_public_ip" {
  value = aws_instance.web.public_ip
}

output "monitoring_public_ip" {
  value = aws_instance.monitoring.public_ip
}
