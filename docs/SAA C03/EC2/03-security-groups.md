## Security Groups

Los securitty groups actuan como firewalls para las instancias EC2. Permiten regular el tráfico de salida y entrada

Las reglas permiten configurar

- Tipo de tráfico: TCP, UDP, SSH, ...
- Origen o destino: permite configurar origenes desde rangos de IP (CIDR) o otros SG conocidos

Acotadas a una región y a una VPC

> Recomendación: crear un único SG para el acceso mediante SSH

Por defecto

- todo el tráfico de entrada está bloqueado
- todo el tráfico de salida está permitido

## Puertos más frecuentes

- 21: SSH
- 22: STP
- 22: SFTP
- 80: HTTP
- 443: HTTPS
- 3389: RDP
