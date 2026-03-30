---
title: Acceso a AWS
---

Las opciones de para acceder a los recursos de AWS son:

- Consola de AWS
- CLI de AWS
- SDK de AWS

## Claves de acceso para AWS

Las claves de acceso consisten en un ID de clave de acceso y una clave de acceso secreta. Estas claves se utilizan para autenticar las solicitudes a la API de AWS y se pueden generar para usuarios de IAM. **Actuan como contraseñas para el acceso programático** a los recursos de AWS, por lo que es importante mantener estas claves seguras y no compartirlas, ya que proporcionan acceso a los recursos de AWS.

## AWS CLI

La AWS Command Line Interface (CLI) es una herramienta de línea de comandos que permite a los usuarios interactuar con los servicios de AWS utilizando comandos en la terminal. La CLI de AWS se puede configurar para usar las claves de acceso de un usuario de IAM, lo que permite a los usuarios ejecutar comandos para administrar sus recursos de AWS desde la línea de comandos.

> https://github.com/aws/aws-cli

> Dentro de AWS, CloudShell es un entorno de terminal basado en la web que viene preconfigurado con la AWS CLI, lo que facilita a los usuarios ejecutar comandos de AWS sin necesidad de configurar un entorno local.

## AWS SDKs

AWS proporciona Software Development Kits (SDKs) para varios lenguajes de programación, como Python, Java, JavaScript, Ruby, entre otros. Estos SDKs facilitan la integración de las aplicaciones con los servicios de AWS al proporcionar bibliotecas y herramientas que simplifican la autenticación, el manejo de errores y la interacción con las API de AWS.

> https://aws.amazon.com/tools/
