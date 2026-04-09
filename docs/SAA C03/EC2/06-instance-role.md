# EC2 instance role

Las instancias de EC2 pueden interectuar con la API de AWS sin usuarios de IAM. Esto aporta un grado mayor de seguridad dado que no tenemos claves que puedan ser usadas por cualquiera. Por contra, a la instancia se le asigna un rol de AWS para acceder a los servicios de AWS (como crear un bucket de S3 o listar objetos en una DynamoDB).

> Recomendación: no usar nunca un IAM user en una instancia EC2. Usa siempre un instance role
