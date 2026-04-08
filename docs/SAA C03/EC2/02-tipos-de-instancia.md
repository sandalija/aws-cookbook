# Tipos de instancias EC2

Las prinicpales categirías de instancias EC2 son:

- Instancias de uso general (General purpose)
- Instancias optimizadas para computación (Compute optimized)
- Instancias optimizadas para memoria (Memory optimized)
- Instancias optimizadas para almacenamiento (Storage optimized)
- Instancias optimizadas para aceleración (Accelerated computing)
- Instancias para computación de alto rendimiento (High performance computing)

Dentro de cada categoria, hay disponibles diferentes tipos de instancias, que funcionan como si se tratase de un sistema de tallas.

> ```
> t3.micro
> ```

- La primera letra, en este caso "t", indica la familia de la instancia, que se refiere a su categoría general.
- El número "3" indica la generación de la instancia, lo que puede implicar mejoras en el rendimiento y características en comparación con generaciones anteriores.
- La palabra "micro" indica el tamaño de la instancia dentro de su familia, lo que afecta a los recursos asignados, como CPU, memoria y almacenamiento.

> Pueden compararse los distintos tipos de instancia en https://instances.vantage.sh/

## Instancias de uso general (General purpose)

Ideales para aplicaciones sin requisitos especificos, como servidores web, o aplicaciones que necesitan un equilibrio entre recursos de computación, memoria y almacenamiento.

## Instancias optimizadas para computación (Compute optimized)

Las instancias optimizadas para computación están diseñadas para aplicaciones que requieren un alto rendimiento de CPU como

- Serivdores web de alto rendimiento
- Procesamiento de lotes
- Análisis de datos
- Codificación de video
- _Machine learning_
- Servicios _gaming_
- ...

## Instancias optimizadas para memoria (Memory optimized)

Las instancias optimizadas para memoria están diseñadas para aplicaciones que requieren un alto rendimiento de memoria.

- Bases de datos en memoria
- Caches distribuidas como ElastiCache
- Procesador de datos en tiempo real
- Análisis de big data
- ...

## Instancias optimizadas para almacenamiento (Storage optimized)

Ideales para aplicaciones que requiern de un alto nivel de operaciones de entrada/salida (I/O) en el almacenamiento. Los casos de uso más frecuentes incluyen:

- OTLP
- Bases de datos NoSQL
- Bases de datos relacionales
- Sistemas de archivos distribuidos
- Data warehousing
- ...
