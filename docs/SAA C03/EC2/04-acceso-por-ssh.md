# Acceso a una instancia EC2 mediante SSH

SSH está disponible en

- Linux
- MacOS
- Windows

> Para las versiones anteriores a Windows 10, es recomendable usar Putty

## Errores típicos

### Conneciton timeout

El tráfico SSH no está permitido en el _security group_ asociado a la instancia.

### Connection refused

Tal vez el SO de la AMI utilizada no esté usando el puerto SSH por defecto (puerto 22).

### Permission denied

Verifica que estás usando el usuario y la clave de seguridad correcta. Por defecto, en la mayoria de casos el usuario es `ec2-user`.
