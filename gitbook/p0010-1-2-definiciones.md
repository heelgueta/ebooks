## 1.2 Definiciones

Antes de avanzar hacia herramientas, gráficos o fórmulas, tenemos que ordenar el lenguaje. No como quien memoriza un glosario, sino como quien aprende a usar bien las palabras porque entiende que, si no lo hacemos, todo lo que viene después se vuelve turbio. Porque si hablamos enredado, creemos que estamos en desacuerdo... cuando en realidad solo estamos usando los mismos términos para cosas distintas.

La estadística ha sido definida de muchas maneras. Algunos textos clásicos de estadística más "pura" la describen como *el estudio de los métodos para recolectar, presentar, analizar e interpretar datos numéricos obtenidos de observaciones*. Otros, desde un enfoque más aplicado, la definen como *el conjunto de principios y técnicas que nos permiten tomar decisiones informadas a partir del análisis de datos recolectados sistemáticamente*. Ambas son válidas.

Por otro lado, uno de los abuelos de la disciplina, Karl Pearson lanzó una afirmación simple y potente: **“la estadística es la gramática de la ciencia”**. Un statement persuasivo que hace que hasta hoy tengamos que estudiar esto. No se trata solo de técnica: se trata del lenguaje que nos permite hablar con claridad, con estructura, con coherencia dentro del mundo científico. Así como no podés escribir literatura sin saber conjugar verbos, no podés hacer ciencia sin entender cómo se construyen, evalúan y reportan datos.

Pero para efectos de este libro, propongo dos definiciones más compactas. La primera: **la estadística es una herramienta para construir conocimiento a partir de datos**. Porque aunque venga de la matemática, en nuestras disciplinas —psicología, educación, salud, ciencias sociales— la usamos así: como una manera de entender mejor el mundo. La segunda: **es una disciplina que nos enseña cómo recolectar, organizar, analizar e interpretar datos**. Y esas cuatro palabras van a ser protagonistas de todo lo que viene:

- **Recolectar**: cómo diseñamos instrumentos, cómo medimos, cómo obtenemos datos que no sean un chiste.
- **Organizar**: cómo registramos, limpiamos y preparamos esos datos.
- **Analizar**: qué hacemos con ellos una vez que están listos —resúmenes, gráficos, modelos.
- **Interpretar**: cómo entendemos esos resultados en relación a nuestras preguntas.

Ahora bien, no toda la estadística es igual. Existe una estadística teórica —más abstracta, más matemática— que se dedica a estudiar las propiedades de los estimadores, las distribuciones, los supuestos. Pero este libro se enfoca en **estadística aplicada**, es decir, en cómo usamos estas herramientas para responder preguntas reales en investigaciones reales con datos reales (y a veces bastante feos). No vamos a hacer demostraciones con símbolos griegos flotando: vamos a ver qué podemos decir cuando alguien te pasa un Excel con 1000 respuestas.

Y ahí conviene distinguir dos grandes dimensiones dentro de esta caja de herramientas:

Por un lado está la **estadística descriptiva**, que se dedica a ordenar el caos. Como seres humanos, nuestra capacidad de procesamiento de información es limitada. Podemos entender a un grupo de personas si son poquitos —¿siete sujetos?, ok, los leo uno por uno—. Pero si son 100, 1000 o un millón, necesito ayuda. Necesito saber cómo se comporta el grupo sin leer cada fila. La estadística descriptiva nos da eso: resúmenes, visualizaciones, medidas clave. Es como hacer zoom out y poder ver el panorama general. Es el foco de este libro.

Y por otro lado está la **estadística inferencial**, que aparece cuando queremos decir algo más allá de lo que tenemos. Cuando queremos extrapolar lo observado en una muestra y hacer afirmaciones (con cierto margen de error) sobre una población más grande. Inferir implica riesgo, pero también potencia. No es el foco de este libro, pero iremos anticipando su necesidad, y cuando convenga, daremos algunos vistazos.

Para hablar bien de esto, necesitamos entender qué significa “población” y “muestra”. Si yo quiero estudiar todos los Pokémon existentes —actualmente 1025—, esa sería mi población. Si me concentro solo en los originales de la primera generación (n = 151), esa sería una muestra. Idealmente, una muestra representa bien a su población: no basta con que sea más chica, tiene que ser seleccionada de manera que nos diga algo útil. Lo mismo pasa si estudio a todos los adolescentes chilenos: no puedo simplemente encuestar a los que tengo cerca y asumir que eso vale para todo el país. La idea de “muestra” está amarrada a esa responsabilidad: reducir sin distorsionar. Cómo conseguir o distinguir una "buena muestra" es una tarea que será más pertinente discutir con detalle cuando hablemos de estadística inferencial, pero valdrá la pena tenerlo en mente.

También esta distinción nos lleva a algo más grande. Lo que hacemos con estadística se enmarca en una práctica más amplia: **la investigación cuantitativa**. Es un enfoque que busca responder preguntas mediante la recolección y análisis de datos numéricos. A veces usamos encuestas, a veces pruebas, a veces observaciones codificadas. Pero siempre hay datos. Y esos datos se analizan con estadística.

Existe también la **investigación cualitativa**, que es otra forma de abordar el conocimiento, centrada en narrativas, significados, experiencias en profundidad. En mi opinión puede ser un poderoso complemento. Pero no es el foco de este libro. Acá trabajaremos todo el tiempo dentro de la lógica cuantitativa. Y aunque no hablaremos de diseño de investigaciones en detalle (eso es materia de un curso de metodología), algunas de esas ideas van a aparecer igual, porque sin preguntas bien planteadas, ningún análisis sirve.

En este contexto, los estudios se hacen con datos. Y esos datos provienen de **sujetos** (también llamados unidades de análisis), a quienes observamos a través de la medición o registro de **variables**. Cada variable representa una característica que puede cambiar entre sujetos: edad, sexo, nivel de estrés, ingreso mensual, tiempo de reacción, color favorito. Si no cambia, no es variable.

Un **dato**, entonces, es un valor específico de una variable para un sujeto, en el contexto de un estudio cuantitativo. Por ejemplo: “edad = 19 años” para un estudiante universitario. Un dato puede ser un número o un valor que tiene un significado, un contexto. En lenguaje técnico podríamos decir que un dato es una celda de una matriz de datos. Pero no nos apuremos: todo eso lo vamos a ver con más detalle después.

Ahora, sobre variables: más adelante veremos que hay diferentes tipos. Una de las distinciones más importantes es entre variables **numéricas** (también llamadas *cuantitativas*) y **categóricas** (también llamadas *cualitativas*). ¿Todo bien? Sí, pero hay una trampa: como ya dijimos que existe investigación “cuantitativa” y “cualitativa”, es fácil que un estudiante piense que las variables cualitativas son solo para investigación cualitativa y que las cuantitativas son solo para investigación cuantitativa. **Y no. No tiene nada que ver.**

Por eso, en este libro vamos a preferir —cuando sea posible— usar los términos **numéricas** y **categóricas**. Así le hacemos la vida más fácil a los que recién están empezando. Porque hay muchas confusiones que no deberían existir, pero que siguen apareciendo solo por herencia lingüística.

Y hablando de confusiones, toca el turno de una palabra especialmente tramposa: **estadístico**. Este término puede referirse tanto a una persona que se dedica a la estadística como a un valor numérico calculado a partir de una muestra. O sea: **Ronald Fisher** era un estadístico porque se dedicaba a la estadística... pero también desarrolló el **estadístico F de Fisher**, que es una fórmula. ¿Qué tal? Para evitar ese enredo, yo voy a preferir usar el término **estadígrafo** para referirme al valor numérico. Así no mezclamos peras con ¿metales?, o personas con números.

Este tipo de ambigüedades no son raras. De hecho, son la norma. A veces heredamos traducciones apuradas del inglés, o palabras que suenan igual pero significan cosas distintas. Por ejemplo:

- “Alpha” puede referirse tanto a un criterio de significancia estadística (*alpha = 0.05*) como al famoso **coeficiente alfa de Cronbach** para evaluar confiabilidad de escalas. En algunos textos también aparece como *tasa de error tipo I*. Tres significados, un mismo símbolo.
- “Beta” puede ser el coeficiente de regresión estandarizado... o la tasa de error tipo II (probabilidad de no detectar un efecto cuando sí lo hay, o algo así).
- “R” puede ser la decimonovena letra del abecedario, pero también es el coeficiente de correlación de Pearson... o el nombre del software estadístico con el que probablemente trabajemos más adelante. 

Por eso, este libro va a ir comentando —cada vez que se cruce— esos lugares donde el lenguaje puede confundir más de lo que ayuda. Porque muchas veces el problema no es que no entiendas estadística: es que el sistema parece estar diseñado para marearte.

Y eso no puede ser.

Algunos de estos conceptos que acabamos de ver —población, muestra, variable, sujeto, dato, estadígrafo— son ladrillos básicos. No es necesario que los memorices como lista, pero sí que te familiarices con ellos, porque van a aparecer una y otra y otra vez.

Y si en el camino aparecen más conceptos, más nombres raros, más ambigüedades que suenan a contraseña encriptada... tranqui. Este libro está hecho para desenredarlos, para explicarlos con calma, con ejemplos, con comparaciones, y con las herramientas que mejor funcionen. Esto no es un culto de iniciados. Es un idioma. Y cuando lo hablás bien, cambia la forma en que piensas.


