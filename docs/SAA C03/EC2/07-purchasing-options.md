### Opciones de precios y capacidad en EC2

- On Demand
  - Pago por hora o segundo sin compromisos. Ideal para cargas de trabajo impredecibles o pruebas.
- Reservada
  - Compromiso de 1 o 3 años a cambio de un descuento de hasta el 72% sobre On Demand. Ideal para cargas estables y predecibles.
  - Se reseva un tipo de espcifico de instancia por región si no se escoge la opción Convertible Reserved Instance, que aporta menos ahorro.
  - Pago totalmente adelantado, parcialmente adelantado o nada por delante.
  - Permite reservar por región o AZ
  - Existe un marketplace donde comprar y vender capacidad a tercerso (Reserved Instance Marketplace).
- Saving Plans
  - Recomendao sobre reservada
  - Similar a la reservada pero más flexible: se adquiere a un gasto por hora ($/hr) durante 1 o 3 años, aplicable a diferentes tipos de instancia o regiones.
  - Usa el precio de OnDemand como base
  - Acotada a una familia de instancias por región. Puede cambiarse los recursos asignados (la talla).
- Spot
  - Usa recursis libres de AWS con descuentos de hasta el 90%. AWS puede interrumpir la instancia con 2 minutos de aviso.
  - Ideal para tareas tolerantes a interrupciones (batch, renderizado, etc.).
  - No usar para bases de datos o servicios críticos.
- Dedicated Hosts
  - Servidor físico dedicado exclusivamente.
  - Útil para cumplir requisitos de licencias de software (Windows Server, SQL Server, etc.) o normativas de cumplimiento.
  - Es la opción más cara (OnDemand o Reserved)
  - Visibilidad total de la infraestrucutra (sockets, cores, ...)
- Dedicated Instances
  - Ejecuta tus instancias en su propio hardware.
  - Sin tanto control como en Dedicated Hosts.

- Capacity Reservations
  - Reserva on demand en una AZ especifica por cualquier duracción
  - Asegura el acceso a nuevas instancias, evita que no queden disponibles en la AZ.
  - Sin compromiso en el tiempo
  - Se factura cómo on demand aunque no esté la instancia en ejecución.

## Cómo elegir que modelo usar

- On demand: hay necesidad de adquirir una instancia, no importan los descuentos ahora mismo porque no conocemos las necesidades a medio y largo plazo.
- Reservada: se hacen planes para el medio y largo plazo que nos permiten obtener un descuento en instancias.
- Saving Plans: las cargas de trabajo son sostenibles y sabemos que vamos a necesitar durante un periodo de tiempo significativo.
- Spot instances: nos sirve cualquier cosa, estamos haciendo pruebas y cargas de trabajo interruptibles
- Capacity reservations: reserva de capacidad aunque no se sepa si va a ser aprovechada, sólo por si acaso.
