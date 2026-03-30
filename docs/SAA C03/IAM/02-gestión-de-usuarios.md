---
title: Gestión de usuarios de IAM
---

## Usuarios de IAM

Los usuarios de IAM representan a personas o servicios que necesitan acceso a los recursos de AWS. Cada usuario tiene un nombre único dentro de la cuenta y puede tener credenciales de seguridad, como contraseñas para la consola de AWS o claves de acceso para la API.

### Contraseñas de usuarios de IAM

Los usuarios de IAM pueden tener contraseñas para iniciar sesión en la consola de AWS. Es recomendable establecer políticas de contraseñas para garantizar que las contraseñas sean seguras, como requerir una longitud mínima, el uso de caracteres especiales y la rotación periódica de contraseñas.

> No todos los usuarios de IAM necesitan una contraseña. Si un usuario está destinado a ser usado por una persona, este podrá tener una contraseña para acceder a la consola web. De lo contrario, si el usuario es para un servicio o aplicación, no es necesario que tenga una contraseña, sino que es mejor usar claves de acceso para la API.

Los administrador pueden configurar las políticas para caducar contraseñas y evtiar el uso de contraseñas antiguas. Además, es posible requerir que los usuarios cambien su contraseña en el primer inicio de sesión, por lo que se garantiza que cada usuario establezca su propia contraseña segura sin conocimiento por parte del administrador.

## MFA para usuarios de IAM

Multifactor Authentication (MFA) es una capa adicional de seguridad que requiere que los usuarios proporcionen dos formas de autenticación para acceder a los recursos de AWS. Esto puede incluir algo que el usuario sabe (como una contraseña) y algo que el usuario tiene (como un dispositivo MFA). Es altamente recomendable habilitar MFA para todos los usuarios de IAM, especialmente para aquellos con privilegios elevados. Los usuarios **_root_** también deben tener MFA habilitado.

Las opciones para el MFA incluyen:

- Dispositivos MFA virtuales: Aplicaciones para claves 2FA, como Google Authenticator o Authy.
- Security Keys: Dispositivos físicos compatibles con el estándar FIDO U2F, como YubiKey.
- Hardware TOTP: Dispositivos físicos que generan códigos de un solo uso basados en el tiempo, como Gemalto.

Cada usuario de IAM puede tener hasta 8 dispositivos MFA registrados.
