# Amazon Elastic Compute Cloud (Amazon EC2)

## Introducción

Entre las opciones de EC2, se encuentran:

- Servidores virtuales (instancias)
- Almacenamiento (volúmenes EBS)
- Balancers de carga (ELB)
- Auto escalado (Auto Scaling)

## Instancias

EC2 está disponibible para los prinicpales sistemas operativos, incluyendo:

- Linux
- Windows
- MacOS

Para cada instancia, hay que escoger que recursos de hardware se necesitan, como por ejemplo:

- CPU
- Memoria RAM
- Almacenamiento
- Características de red

Además, las instancias de EC2 implementan un sistema de _firewall_ implementado a través de _security groups_.

### EC2 User Data

EC2 user data es una herramienta que permite configurar y personalizar el arranque de una instancia EC2. Al lanzar una instancia, esta podría

- Ejectuar un script predeterminado
- Instalar aplicaciones y dependecias
- Configurar un servidor web
- ...

EC2 user data sólo es ejectuado en el arranque de la instancia.

> Los comandos de EC2 user data se ejecutan con privilegios de root.
