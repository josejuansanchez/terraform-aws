#!/bin/bash

# Script de instalación de Docker y Docker Compose
# Referencia: https://docs.docker.com/engine/install/ubuntu/

set -x

# Actualizamos los repositorios
sudo apt update

# Instalamos los paquetes necesarios para que `apt` pueda usar repositorios sobre HTTPS
sudo apt install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Añadimos la clave GPG oficial de Docker
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Añadimos el repositorio oficial de Docker a nuestro sistema
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Actualizamos la lista de paquetes
sudo apt update

# Instalamos la última versión de Docker y Docker Compose
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Añadimos el usuario actual al grupo docker
sudo usermod -aG docker $USER

# Habilitamos el servicio de Docker para que se inicie automáticamente al arrancar el sistema
sudo systemctl enable docker

# Iniciamos el servicio de Docker
sudo systemctl start docker