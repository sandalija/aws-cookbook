## EC2 Spot instances and Fleets

> Las instancias spot permiten tener hasta un 90% de descuento.

Existen varias estrátegias para la peticiones de instancias spot:

- Max spot price: (current spot price < max ):
  - Como usuarios, defininos que presupuesto hay para adquirir instancias spot. Mientras el coste de la instancia sea menor al presupuesto, estará disponible.
  - Cuando no lo esté, la instancia puede ser parada o interrumpida en el plazo de 2 minutos.
  - Los precios de las instancias spot se definen cada hora.
- Spot Block:
  - La instancia se bloquea durante una 1h a 6h y está disponible
  - Raramente, AWS reclama la instancia en ese rango de tiempo

El coste de las instancias spot está disponible en la sección de Billing.

## Spot request

Las Spot request agrupan

- precio máximo
- Número de instanicas
- Lauch specification
- Tipo de peición: one-time o persistent
- Período de validez

Sólo pueden cancelar mientras la request esté abiera, activa o desactivada. (no mientras este fallida o cerrada). Una vez cancelada, las instancias **no** son terminadas automáticamentes.

## Spot Fleets

Conjunto de instacias spot + on-demand

Una Spot Fllet trata de alcanzar una capacidad de cómputo en base a un presupesto definido.

- Múlitple launch pools - tipos de instnaces, AZs ...

Estrategias

- lowestPrice: se escoge las pools con menor coste. Óptimas para cargas de trabajo cortas
- diversified: equilibro entre las pools. Mejores para la dispoibildad
- priceCapacityOptimized - la opción más recomendada -. Escoge entre las pools de mayor disponibilidad y luego se escoge la de menor precio.
