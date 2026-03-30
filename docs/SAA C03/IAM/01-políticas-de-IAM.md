---
title: Políticas de IAM
---

## Políticas de usuario de IAM

Los usuarios tambíen pueden tener políticas adjuntas directamente a ellos, lo que les otorga permisos específicos. Sin embargo, es recomendable usar grupos para gestionar los permisos de los usuarios, ya que esto facilita la administración y el mantenimiento de los permisos a medida que el número de usuarios crece.

Asimismo, también pueden tener una política directamente adjunta a un usuario, lo que le otorga permisos específicos, aunque no es una solución escalable en el paso del tiempo.

## Grupos de IAM

Los grupos de usuarios de IAM pueden tener políticas adjuntas, que son documentos JSON que definen los permisos que se otorgan a los miembros del grupo. Estas políticas pueden ser administradas por AWS o personalizadas por el usuario.

Los grupos de usuario no pueden contener otros grupos.

## Estructura de una política de IAM

Las políticas de IAM se definen en formato JSON y tienen una estructura específica.

- `Version`: Es la versión de la política, que debe ser "2012-10-17" para las políticas de IAM.
- `Id` (opcional): Es un identificador opcional para la política.
- `Statement`: Es una lista de declaraciones que definen los permisos. Cada declaración tiene los siguientes elementos:
  - `Effect`: Es el efecto de la declaración, que puede ser "Allow" (permitir) o "Deny" (denegar).
  - `Action`: Es la acción o acciones que se permiten o deniegan. Las acciones se especifican en formato de servicio:acción, por ejemplo, "s3:ListBucket".
  - `Resource`: Es el recurso o recursos a los que se aplican los permisos. Los recursos se especifican en formato ARN (Amazon Resource Name), por ejemplo, "arn:aws:s3:::my-bucket".
  - `Principal` (opcional): Especifica a quién se aplican los permisos, como un usuario, grupo o rol. Este elemento se utiliza principalmente en políticas de roles y políticas de confianza.
  - `Condition` (opcional): Especifica las condiciones bajo las cuales se aplican los permisos, como la hora del día o la dirección IP de origen.

```json
{
  "Version": "2012-10-17",
  "Statement": [
    // Permite crear, detener, arrancar y terminar instancias EC2
    {
      "Effect": "Allow",
      "Action": [
        "ec2:RunInstances",
        "ec2:StopInstances",
        "ec2:StartInstances",
        "ec2:TerminateInstances"
      ],
      "Resource": "*"
    },
    // Da acceso a todos los recursos de un S3 y de sus objetos
    {
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": ["arn:aws:s3:::my-bucket", "arn:aws:s3:::my-bucket/*"]
    },
    // Permite acceder a un S3 desde una dirección IP específica
    {
      "Effect": "Allow",
      "Action": "s3:*",
      "Resource": ["arn:aws:s3:::my-bucket", "arn:aws:s3:::my-bucket/*"],
      "Condition": {
        "IpAddress": {
          "aws:SourceIp": "192.168.1.1/32"
        }
      }
    }
  ]
}
```

## Políticas administradas por AWS

AWS proporciona una serie de políticas administradas que se pueden adjuntar a usuarios, grupos o roles. Estas políticas cubren una amplia gama de casos de uso comunes y se actualizan automáticamente por AWS para reflejar los cambios en los servicios y las mejores prácticas de seguridad.
