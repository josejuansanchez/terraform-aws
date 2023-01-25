# terraform-aws

Repositorio para hacer experimentos con [Terraform][1] en [AWS][2].

Este repositorio ha sido creado como un recurso complementario para las prácticas de **Infraestructura como Código** del módulo de [Implantación de Aplicaciones Web][3] del **Ciclo Formativo de Grado Superior ASIR**.

## ¿Qué es Terraform?

[Terraform][1] es una herramienta de [infraestructura como código][4] (_Infraestructure as Code, IaC_) que permite crear, modificar y eliminar infraestructura de forma automática. 

[Terraform][1] puede gestionar los recursos de diferentes proveedores de servicios en la nube, como [AWS][2], [Google Cloud][5], [Azure][6], etc.

## Instalación de Terraform

Para realizar la instalación de Terraform se recomienda seguir los pasos de la [documentación oficial](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).

## Instalación del _plugin_ de Terraform para Visual Studio Code

Se recomienda la instalación del _plugin_ de Terraform para Visual Studio Code. 

El _plugin_ se llama **HashiCorp Terraform** y ha sido desarrollado por la empresa HashiCorp.

## Comandos básicos

### Inicializar el directorio de trabajo

En primer lugar hay que descargar los plugins necesarios del proveedor que se especifica en el archivo de configuración.

```
terraform init
```

### Formatear y validar el archivo de configuración

Terraform nos proporciona un comando para formatear el archivo de configuración para que sea más legible. Algunas de las tareas que realiza este comando son, ajustar la indentación, ordenar los argumentos de los bloques de configuración, etc.

```
terraform fmt
```

Para validar la sintaxis del archivo de configuración podemos utilizar el siguiente comando.

```
terraform validate
```

### Aplicar los cambios

Crea los recursos del archivo de configuración en su cuenta de AWS.

```
terraform apply
```

Si queremos crear los recursos sin tener que escribir `yes` para confirmar la ejecución del comando, podemos utilizar la opción `-auto-approve`.

```
terraform apply -auto-approve
```

### Mostrar el estado actual de los recursos

Muestra los recursos creados en el proveedor y su estado actual.

``` 
terraform show
```

### Eliminar los recursos

Elimina los recursos indicados en el proveedor.

``` 
terraform destroy
```

## Ejemplos

- [Ejemplo 1](ejemplos/ejemplo-01). Crea una instancia EC2 en AWS.
- [Ejemplo 2](ejemplos/ejemplo-02). Crea un grupo de seguridad y una instancia EC2 en AWS.
- [Ejemplo 3](ejemplos/ejemplo-03). Crea un grupo de seguridad, una instancia EC2 en AWS y una IP elástica.
- [Ejemplo 4](ejemplos/ejemplo-04). Ejecuta un script de bash en una instancia EC2.

## Referencias

- [What is Infrastructure as Code with Terraform?](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/infrastructure-as-code).
- [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).
- [Build Infrastructure](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build).
- [Change Infrastructure](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-change).
- [Destroy Infrastructure](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-destroy).
- [Define Input Variables](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-variables).

[1]: https://www.terraform.io
[2]: https://aws.amazon.com/es/
[3]: https://josejuansanchez.org/iaw/
[4]: https://es.wikipedia.org/wiki/Infraestructura_como_c%C3%B3digo
[5]: https://cloud.google.com
[6]: https://azure.microsoft.com/es-es/