# IAM (Identity and Access Management)

## Conceptos clave

IAM es un servicio de AWS que permite gestionar el acceso a los recursos de AWS de forma segura. Con IAM, se pueden crear y administrar usuarios, grupos y roles, y asignar permisos para controlar quién puede acceder a qué recursos.

IAM es un **servicio global**, lo que significa que los usuarios, grupos y roles creados en IAM son válidos en todas las regiones de AWS.

Una vez creada la cuenta con el usuario _root_, lo recomendable es no volver a usarla. A continuación puede crearse usuarios y grupos:

| Andres | Ben | Carla | Damiano | Erika | Francesc |
| ------ | --- | ----- | ------- | ----- | -------- |
| devs   | x   | x     | x       |       |          |
| admins | x   | x     | x       | x     | x        |
| ops    |     |       | x       | x     | x        |

## Permisos de IAM

Los controles de acceso se ralizan a través de políticas, que se asignan a los usuarios, grupos o roles. Estas políticas se definen en formato JSON.

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": "s3:ListBucket",
      "Resource": "arn:aws:s3:::my-bucket"
    }
  ]
}
```

### Principio de privilegios mínimos o _least privilege_

La práctica más recomendada es usar el principio de privilegios mínimos o _least privilege_, la cual consiste en otorgar solo los permisos necesarios para realizar una tarea específica. Esto ayuda a reducir el riesgo de acceso no autorizado o de acciones malintencionadas.
