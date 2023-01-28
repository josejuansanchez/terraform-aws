# Mostramos la IP pública de la instancia
output "elastic_ip" {
  value = aws_eip.ip_elastica.public_ip
}