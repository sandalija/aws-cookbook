# Infraestructura Global de AWS

La infraestructura de AWS está repartida entre distintas regiones del mundo. En cada región, hay una o más zonas de disponibilidad (*Availability Zones, AZ*).

Además, también existe un center de *Edge Location* que permiten ofrecer algunos servicios con menor latencia

## Regiones de AWS
Las regiones de AWS están repartidas por todo el mundo, desde EEUU a Australia. Cada región tiene un código propio.
- us-east-1
- us-east-2
- us-west-1
- us-west-2
- eu-west-1
- eu-central-2
- ap-south-1
- ...

### ¿Cómo escoger una región?

1. Cumplimiento legal

Algunos países u organizaciones como la Unión Europea puede requerir que los datos de sus ciudadnos estén en regiones sobre las que tengan juristicción.

2. Proximidad

Siempre es mejor desplegar los recursos en las regiones más próximas a los usuarios finales con el fin de minimizar la latencia. Por ejemplo, un juego online enfocado al mercado asiático ofrecerá mejor servicio regiones como ap-east-1 (Honk Kong).

3. Disponibilidad de servicios

Algunos servicios pueden no estar disponibles en algunas regiones, especialmente si son de reciente creación.

4. Precios

Los precios de cada servicio pueden variar ligeramente entre regiones.

## Zonas de disponibilidad

Cada región tiene entre 3 y 6 zonas de disponibilidad, aunque normalmente son 3. Cada AZ tiene unas instalaciones independientes entre ellas, por lo que en caso de falla en una zona de disponibilidad, hay al menos otra dos para minimizar el impacto. Cada AZ tiene una conectividdad y red aislada de las demás.

Las AZ están conectadas entre ellas con redes de gran ancho de banda y baja latencioa

### Puntos de presencia (*AWS points of presence*) - *Edge Locations*

Amazon tiene 400+ puntos de presencia complementarios alrededor del mundo en al menos 40 países para proporcionar la menor latencia posible a los usuarios finales


## Servicios por región

Aunque la mayoria de servicios de AWS están actados por región, algunos servicios coomo IAM, Route53, CloudFront o WAF se ofrecen de manera global, sin distinción entre regiones. 