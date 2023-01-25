# Cómo ejecutar comandos automáticamente al crear una instancia EC2

Para ejecutar comandos automáticamente al crear una instancia EC2 podemos utilizar el argumento `user_data` del recurso `aws_instance`.

## Utilizando un script local

```terraform
resource "aws_instance" "ejemplo_04" {
  ami                    = "ami-00874d747dde814fa"
  instance_type          = "t2.small"
  key_name               = "vockey"
  security_groups        = ...
  ...
  user_data              = "${file("path/to/script.sh")}"
}
```

## Utilizando un script remoto

```terraform
resource "aws_instance" "ejemplo_04" {
  ami                    = "ami-00874d747dde814fa"
  instance_type          = "t2.small"
  key_name               = "vockey"
  security_groups        = ...
  ...
  user_data              = "${http_file("https://example.com/script.sh")}"
}
```

## Indicando la lista de comandos en el campo `user_data`

```terraform
resource "aws_instance" "ejemplo_04" {
  ami                    = "ami-00874d747dde814fa"
  instance_type          = "t2.small"
  key_name               = "vockey"
  security_groups        = ...
  ...
  user_data = <<-EOF
    #!/bin/bash
    apt-get update
    apt-get install -y apache2
  EOF
}
```

## Indicando la lista de comandos en el provisioner `remote-exec`

```terraform
resource "aws_instance" "ejemplo_04" {
  ami                    = "ami-00874d747dde814fa"
  instance_type          = "t2.small"
  key_name               = "vockey"
  security_groups        = ...
  ...
  provisioner "remote-exec" {
    inline = [
      "apt-get update",
      "apt-get install -y apache2"
    ]
  }
}
```