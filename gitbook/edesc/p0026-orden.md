#### Orden

La forma más común y recomendada de organizar los datos en estadística aplicada es lo que llamamos formato **tidy** (ordenado, limpio). ¿Qué significa esto?

- Cada **fila** representa un **sujeto distinto** (persona, caso, unidad de análisis).
- Cada **columna** representa una **variable distinta**.
- Cada **celda** contiene un **dato específico**: el valor de una variable para un sujeto.

Este formato no es caprichoso: es el que mejor funciona con casi todos los programas de análisis de datos, y además tiene sentido lógico. Se puede leer de izquierda a derecha (revisar variables dentro de un mismo caso) o de arriba hacia abajo (ver cómo se distribuye una variable entre distintos casos).

[INSERTAR IMAGEN DE MATRIZ TIDY]  
*Caption: Estructura típica de una matriz tidy: sujetos en filas, variables en columnas.*

Pero ojo: no todos los datos vienen así desde el principio. A veces están desordenados, mal estructurados, con nombres larguísimos, o con formatos extraños. Y si no los organizamos bien desde el inicio, vamos a sufrir después. Por eso conviene establecer ciertas buenas prácticas desde el comienzo.

Por ejemplo:

- **Nombres de variables**: deben ser cortos, claros, sin tildes ni espacios. Si una variable se llama “Edad (años cumplidos al momento de la recolección)”, se puede acortar a `edad` y guardar la definición completa en otro lado (eso se llama **metadato**: dato sobre los datos).
- **Formato homogéneo**: si una columna mezcla números con letras, probablemente el software se vuelva loco. Si una variable es numérica, que todos los valores sean numéricos.
- **Una tabla, una unidad de análisis**: no mezcles personas con países o canciones. Cada matriz debe tener un sujeto consistente.

Si se te ocurre una forma más linda o creativa de organizar, bacán. Pero mientras no tengas una razón muy buena, mejor seguir el formato estándar para que todos la podamos entender. Además, hay formas de transformar los datos a otras configuraciones si fuera necesario.

