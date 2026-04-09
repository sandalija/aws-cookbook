# EC2 instance connect

EC2 instance connect permite acceder desde una consola web a una instancia sin configurar el acceso mediante SSH.

## Requisitos para que EC2 Instance Connect funcione

- AMI compatible — Amazon Linux, Ubuntu u otra distribución de Linux con el software de EC2 Instance Connect instalado.
- Conectividad de red — IP pública + subred con ruta a Internet (o bien IP privada con Direct Connect / VPN / VPC Endpoint).
- Grupo de seguridad — Regla de entrada que permita SSH (puerto 22) desde el prefijo com.amazonaws.<region>.ec2-instance-connect.
- Permisos IAM — El usuario debe tener los permisos
