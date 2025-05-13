# I. Introducción

Antes de comenzar a “hacer estadística”, necesitamos tomarnos un rato para pensar por qué existe esta disciplina, de dónde viene, para qué sirve y qué tipo de conocimiento realmente nos permite construir. Esta primera parte del libro busca poner en contexto la estadística: no como conjunto de fórmulas, sino como una forma particular de ver, ordenar e interpretar el mundo. 

Porque si bien podemos usar la estadística como una simple herramienta técnica, también podemos —y deberíamos— entenderla como parte de una historia más larga, en la que las personas hemos intentado, con más o menos éxito, responder algunas de las preguntas más fundamentales que existen: ¿qué sé?, ¿cómo lo sé?, ¿puedo confiar en esto?, ¿cómo comparo cosas?, ¿qué tan seguro estoy?

Vamos a comenzar por la pregunta más obvia: ¿por qué aprender estadística?


## 1. Conocer

<!--force-render-->

_(Sección en desarrollo: **1. Conocer**)_

---

### 1.1 Trasfondo

<!--force-render-->

_(Sección en desarrollo: **1.1 Trasfondo**)_

<!-- BEGIN:TABS -->
{% tabs %}
{% tab title="Texto" %}
Texto explicativo en tab.
{% endtab %}

{% tab title="Ejemplo" %}
Código o datos aquí.
{% endtab %}
{% endtabs %}
<!-- END:TABS -->

---

#### Porqué

Hay muchas respuestas posibles a esa pregunta. Algunas son directas y sin pudor:

- *Porque está en la malla.*
- *Porque necesito pasar la asignatura.*
- *Porque quiero sacar la carrera sin atrasarme.*
- *Porque me carga, pero igual me la tengo que bancar.*
- *Porque me metí a un posgrado y no sabía que esto venía incluido.*

Y sí, todas esas son respuestas válidas. No vamos a juzgar. A veces una motivación honesta, aunque poco épica, es suficiente para prender el motor. Porque al final, da lo mismo si entraste por convicción profunda o por inercia académica: lo importante es que ahora estás aquí. Bienvenidx.

También están quienes llegan con una motivación algo más aspiracional:

- *Porque quiero entender los papers.*
- *Porque me gustaría poder hacer investigación.*
- *Porque quiero tomar decisiones con base en datos.*
- *Porque me interesa trabajar con encuestas, evaluaciones, intervenciones.*

Y además —sí, además— están quienes se acercan con hambre más filosófica o política:

- *Porque quiero entender mejor cómo funciona el mundo.*
- *Porque quiero saber cuándo me están tratando de engañar.*
- *Porque quiero tener herramientas para ser un ciudadano/a más crítico/a.*
- *Porque creo que los datos no son neutros y quiero aprender a leerlos bien.*

Y todas esas también son razones legítimas. Algunas prácticas, otras existenciales. Algunas de corto plazo, otras de largo aliento. Y puede que empieces con una y termines con otra. La estadística tiene esa cualidad de transformarte un poquito, incluso si al principio no te diste cuenta.

---

---

#### Historia

<!--force-render-->

Pero antes de ver cómo transformarnos con datos, vale la pena mirar hacia atrás. Porque la estadística no nació de un Excel ni de un SPSS ni de un paper. Tiene historia, y como toda buena historia, empieza con una necesidad humana muy básica: *contar cosas importantes*.

Al principio, contar era cuestión de supervivencia: animales cazados, ciclos lunares, cuántas personas hay en tu clan, si sembraste más papas este año que el anterior. Pero con el tiempo, la cosa se fue sofisticando. Las civilizaciones comenzaron a censar, a registrar, a ordenar.

Los griegos, que son como ese amigo que siempre quiere opinar primero en cualquier tema, nos dejaron algunas bases lógicas, pero no estadística formal. Eso vino mucho después, cuando los estados modernos —en plena consolidación del poder y la burocracia— necesitaban números para gobernar: nacimientos, muertes, impuestos, guerras.

Ahí aparece la palabra “statistics”, derivada de *status*, relacionada con el Estado. Contar era gobernar. Y todavía lo es.

Ya en el siglo XIX y XX, la estadística empieza a tomar forma como disciplina más matemática. Nombres como **Gauss**, **Laplace**, **Galton**, **Pearson**, **Fisher**, **Tukey** se vuelven parte del panteón. Con ellos llegan cosas como la curva normal, la regresión, el análisis de varianza, la inferencia estadística.

Y de ahí al mundo actual: encuestas, big data, IA, algoritmos predictivos, dashboards con muchos colores y pocos significados. Vivimos en una época de datos, pero eso no garantiza comprensión.

---
---

#### Conocimiento

Todo esto nos lleva a una idea central: la estadística no es solo cálculo. Es una forma de conocer.

Desde los griegos, pasando por Galileo, Descartes y Bacon, hasta llegar a **Popper** con su falsacionismo, hay una obsesión persistente: *¿cómo sabemos lo que sabemos?*

Popper decía que la ciencia no avanza confirmando cosas, sino tratando de refutarlas. Y que una buena teoría es la que puede, al menos en teoría, ser desmentida por los hechos. Aquí entra la famosa metáfora de **la tetera de Russell**: si alguien dice que hay una tetera orbitando el Sol entre la Tierra y Marte, pero es tan pequeña que no puede ser detectada por ningún telescopio, ¿tenemos que creerle? No. La carga de la prueba está en quien afirma, no en quien duda.

La estadística vive en ese filo. Nos da herramientas para decir: *“a ver... esto que observamos, ¿es compatible con lo que esperábamos? ¿Qué tan raro es esto si el modelo fuera cierto?”* No responde preguntas metafísicas, pero nos da pistas.

Y eso es parte de su poder: la estadística no es el conocimiento, pero es una forma de acercarse al conocimiento con humildad, con criterio, con estructura.

---
---

### 1.2 Definiciones

Pero si vamos a acercarnos a esta disciplina, necesitamos al menos ponernos de acuerdo en algunos términos. No se trata de memorizar definiciones, sino de tener un lenguaje compartido.

Para mí, la estadística es, simplemente, **una herramienta para construir conocimiento a partir de datos.** O si quieres sonar más fino: es una disciplina que nos enseña cómo recolectar, organizar, analizar e interpretar datos para responder preguntas relevantes.

¿Demasiado corto? Puede ser. Pero me gusta esa definición porque deja espacio para que tú le pongas el contenido.

Hay otras más largas. Pearson la llamó “la gramática de la ciencia”. Moore y Triola tienen definiciones que parecen diseñadas para que el lector diga “wow, esto suena serio”. Y lo es. Pero también puede sonar innecesariamente rimbombante si uno no está acostumbrado.

Por eso, vamos con algo claro:

- **Estadística descriptiva**: se encarga de representar, organizar y resumir datos. No saca conclusiones sobre lo que no se ve, solo describe lo que hay.
- **Estadística inferencial**: busca extrapolar, generalizar, estimar. A partir de una muestra, dice cosas sobre una población. A partir de una situación, sugiere qué pasaría en otras.

Y de paso, algunos conceptos básicos que vamos a necesitar:

- **Población**: el conjunto completo que nos interesa.
- **Muestra**: un subconjunto representativo (ojalá).
- **Sujeto**: cada unidad de análisis (persona, objeto, evento...).
- **Dato**: el valor que observamos.
- **Variable**: la característica que estamos midiendo.

Y aquí una aclaración importante. A veces, en textos y clases, se usa la palabra **estadístico** para referirse tanto al profesional como al número resumen de una muestra (como la media o la desviación estándar). 

Esto es un infierno lingüístico. Por eso, hay quienes —me incluyo— prefieren usar **estadígrafo** para el número, y dejar “estadístico” para la persona. ¿Es común? No mucho. ¿Es más claro? Para mí, sí.

Este tipo de ambigüedades son fuente constante de confusión para estudiantes en todo el mundo. Como cuando uno dice “normal” y no queda claro si habla de una persona, de una distribución, o del deseo de no destacar en ninguna dirección. A lo largo del libro iré aclarando estos matices.

---
---

### 1.3 Advertencias

Ahora, antes de cerrar este capítulo, hay que decirlo: **la estadística se ha usado (y se sigue usando) para decir muchas estupideces**. Y no siempre es por maldad. A veces es por ignorancia. O por entusiasmo mal calibrado. O por falta de contexto. O por chamullo derechamente.

Por eso quiero mostrarte algunos perfiles clásicos del mal uso estadístico.

Primero, está el **borracho**. Esa persona que se apoya en las estadísticas como quien se apoya en un poste de luz: no para ver mejor, sino para no caerse. Suelen decir cosas como “dato mata relato” con cara de ganador.

<!-- BEGIN:IMG -->
<figure>
  <img src="https://raw.githubusercontent.com/heelgueta/edesc/refs/heads/main/src/img/borracho.png" alt="borracho" width="188">
  <figcaption><p>Apunto de caer. Pero con Excel abierto.</p></figcaption>
</figure>
<!-- END:IMG -->

Luego está el **payaso elegante**. Ese que tira un gráfico 3D con gradient colorido, cita un par de papers, y termina afirmando que el mate sube el PIB si se toma con la mano izquierda. Tiene el lenguaje, pero no el juicio.

<!-- BEGIN:IMG -->
<figure>
  <img src="https://raw.githubusercontent.com/heelgueta/edesc/refs/heads/main/src/img/payaso.png" alt="payaso" width="188">
  <figcaption><p>El show debe continuar. Aunque los datos no den.</p></figcaption>
</figure>
<!-- END:IMG -->

Y el peor de todos: el **estafador profesional**. Manipula datos con intención. Escoge qué mostrar, qué ocultar, cómo graficar para inducir a error. A veces está en medios, a veces en política, a veces en consultorías. No es ignorancia. Es cinismo.

<!-- BEGIN:IMG -->
<figure>
  <img src="https://raw.githubusercontent.com/heelgueta/edesc/refs/heads/main/src/img/estafador.png" alt="estafador" width="188">
  <figcaption><p>Cuando la planilla de Excel se convierte en arma.</p></figcaption>
</figure>
<!-- END:IMG -->

Y a veces, simplemente, los datos son una porquería. No se puede sacar oro de donde no hay. Si metes basura, lo que sale es basura.

<!-- BEGIN:IMG -->
<figure>
  <img src="https://raw.githubusercontent.com/heelgueta/edesc/refs/heads/main/src/img/basura.png" alt="basura" width="188">
  <figcaption><p>Garbage in, garbage out.</p></figcaption>
</figure>
<!-- END:IMG -->

---

Entonces sí: hay razones para sospechar de las estadísticas. Pero también hay razones para aprender a usarlas bien. Porque si tú no sabes leer los números, alguien más lo hará por ti. Y quizás te los venda caros.

Este capítulo fue solo una entrada. Lo que viene a continuación es el principio del trabajo: aprender a organizar datos, distinguir variables, y construir matrices de observación. Vamos a empezar a traducir el mundo al lenguaje de los datos. Y sí, lo haremos en orden.
---

## 2. Organizar

<!--force-render-->

_(Sección en desarrollo: **2. Organizar**)_

---

### 2.1 Datos

<!--force-render-->

_(Sección en desarrollo: **2.1 Datos**)_

---

### 2.2 Variables

<!--force-render-->

_(Sección en desarrollo: **2.2 Variables**)_

---

#### Rol

<!--force-render-->

_(Sección en desarrollo: **Rol**)_

---

#### Naturaleza

<!--force-render-->

_(Sección en desarrollo: **Naturaleza**)_

---

#### Medida

<!--force-render-->

[[componente:tabs:p1223]]

_(Sección en desarrollo: **Medida**)_

---

### 2.3 Matriz

<!--force-render-->

_(Sección en desarrollo: **2.3 Matriz**)_

---

#### Orden

<!--force-render-->

_(Sección en desarrollo: **Orden**)_

---

#### Software

<!--force-render-->

_(Sección en desarrollo: **Software**)_

---

#### Formatos

<!--force-render-->

_(Sección en desarrollo: **Formatos**)_

---

## 3. Resumir

<!--force-render-->

_(Sección en desarrollo: **3. Resumir**)_

---

### Frecuencia

<!--force-render-->
[[componente:tabs:p1331]]

_(Sección en desarrollo: **Frecuencia**)_

---

### Tendencia

<!--force-render-->

_(Sección en desarrollo: **Tendencia**)_

---

#### Moda

<!--force-render-->

_(Sección en desarrollo: **Moda**)_

---

#### Media

<!--force-render-->

_(Sección en desarrollo: **Media**)_

---

#### Mediana

<!--force-render-->

_(Sección en desarrollo: **Mediana**)_

---

### Gráficos

<!--force-render-->

_(Sección en desarrollo: **Gráficos**)_

---

#### Barra simple

<!--force-render-->

_(Sección en desarrollo: **Barra simple**)_

---

#### Sectores

<!--force-render-->

_(Sección en desarrollo: **Sectores**)_

---

#### Horrores

<!--force-render-->

_(Sección en desarrollo: **Horrores**)_

---

#### Accesibilidad

<!--force-render-->

_(Sección en desarrollo: **Accesibilidad**)_

---

#### Histograma

<!--force-render-->

_(Sección en desarrollo: **Histograma**)_

---

### Desafíos

<!--force-render-->

_(Sección en desarrollo: **Desafíos**)_

