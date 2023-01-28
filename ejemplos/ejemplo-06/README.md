# Configuración de la información de salida

La información de salida se configura en bloques de tipo `output`. Estos bloques se pueden definir en cualquier archivo de configuración de Terrafom. En este ejemplo vamos a utilizar un archivo externo llamado `outputs.tf`.

La información de salida se mostrará después de ejecutar el comando:

```bash
terraform apply
```

Para mostrar únicamente la información de salida utilizaremos el comando:

```bash
terraform output
```

# Referencias

- [Query Data with Outputs](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-outputs).