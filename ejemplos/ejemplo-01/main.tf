# Configuramos el proveedor de AWS
provider "aws" {
  region = "us-east-1"
}

# Creamos una instancia EC2
resource "aws_instance" "instancia_ejemplo_01" {
  ami           = "ami-00874d747dde814fa"
  instance_type = "t2.small"
  tags = {
    Name = "instancia_ejemplo_01"
  }
}