# Presentación

Bienvenidxs a este libro / sitio / espacio / cosa sobre estadística descriptiva aplicada.

Este material está pensado como un complemento práctico y situado para quienes están aprendiendo estadística descriptiva en carreras de ciencias sociales, particularmente en etapas iniciales de la formación universitaria. No reemplaza textos clásicos ni cursos formales; más bien, intenta acompañarles con otro tono, otra selección, otro enfoque. Uno que intenta ser claro, cercano, con ejemplos útiles, algo de humor (a veces dudoso) y una estructura que sigue el pulso de la asignatura semestral "Estadística descriptiva aplicada a la Psicología" de la Carrera de Psicología de la Universidad de Magallanes,  dictada por el profesor Herman Elgueta.

Este libro comienza con una breve explicación de su enfoque y contenidos desde el punto de vista del autor (hola 👋), pero si lo prefieres, puedes saltar directamente a los contenidos principales usando el menú lateral. La Parte I "Introducción" introduce la estadística desde cero, explicando por qué es importante y cómo organizar y resumir los datos. La Parte II "Numéricas" profundiza en el estudio de las variables numéricas y cómo entenderlas en términos de posición, variabilidad y comparación. La Parte III "Relaciones" aborda cómo explorar las asociaciones que pueden existir entre dos variables.

Al final, encontrarás una sección de cierre con comentarios sobre los límites de lo revisado y pistas hacia lo que viene después (spoiler: estadística inferencial). Además, a medida que este proyecto crezca, iré incorporando ejemplos aplicados más extensos que retoman los contenidos en contextos ficticios y reales, desglosando paso a paso cómo se utilizan estas herramientas en la práctica.

Cada sección está pensada para que puedas leerla en orden... o no. Tú decides.

## Explicación

Soy Herman Elgueta, psicólogo e investigador en psicología con expertiz en los métodos cuantitativos y hago clases de estadísticas, análisis de datos, psicometría y metodología  de investigación cuantitativa. Este libro se plantea como una herramienta auxiliar para algunas de mis clases introductorias. Refleja, en su estructura, los contenidos que suelo abordar en cursos de estadística en el pregrado en Psicología, pero también en posgrados de investigación en ciencias sociales y programas de formación doctoral. No es un manual hiper-técnico, pero tampoco una charla superficial de TikTok. No es un chiste, pero tampoco es rígido. Es un texto híbrido que aún está en desarrollo. Un cruce entre apuntes de clase, diapositivas desordenadas, una caja de herramientas y sobre todo un intento de testimonio de mi forma de intentar entender y enseñar esta disciplina.

Quienes me conocen, lo saben: me gusta intentar explicar con ejemplos a veces absurdos, hacer analogías extrañas, y meterle algo de comedia a temas que suelen parecer áridos. El éxito de esa comedia varía. Prometo que a veces puede llegar a parecer un stand-up académico, aunque otras veces se siente como una interpretación extendida de la obra [**4′33″ de John Cage**](https://youtu.be/AWVUp12XPpU), con silencios incómodos incluidos. En este texto intenté moderarme. No es un libro de chistes. Pero puede que se cuele alguna alusión a Pokémon, Harry Potter o a los memes del momento (sorry not sorry). En todo caso, también busco luego darle una vuelta mas seria a las cosas y revisar juntos ejemplos del "mundo real".

<!-- BEGIN:IMG -->

<figure>
  <img src="https://raw.githubusercontent.com/heelgueta/edesc/refs/heads/main/src/img/pikachu.png" alt="Pikachu" width="188">
  <figcaption>
    Pokémon No. 25 de la Pokédex Nacional, y en promedio, miden 0.4 metros y pesan 6 kilogramos.</p>
  </figcaption>
</figure>

<!-- END:IMG -->


Mi intención principal es que este material sea útil para repasar, para profundizar, para actualizarse. Que funcione como un recurso vivo, que pueda corregirse, expandirse, adaptarse. Una de las ventajas de tenerlo online es justamente esa: la posibilidad de evolucionar con el tiempo. Está pensado en un nivel intermedio: lo suficientemente accesible para estudiantes de primer o segundo año, pero con detalles y referencias que lo hacen valioso también para personas con más experiencia, incluyendo colegas o incluso estudiantes de posgrado que quieran reforzar lo básico (que nunca está de más). 

A lo largo del libro, cuando sea pertinente, también se incorporan apuntes histórico-filosóficos que nos permiten situar esta disciplina en un marco más amplio; discusiones sobre la presentación visual de datos y principios de diseño que no solo ayudan a comunicar, sino también a pensar mejor con datos; así como recomendaciones sobre software y flujos de trabajo reproducibles, que apuntan a fomentar prácticas más abiertas, transparentes y eficientes.

La escritura está atravesada por mi experiencia docente acumulada durante más de una década. En ese tiempo he aprendido que en cada aula hay una diversidad de trayectorias y actitudes hacia las matemáticas. Para algunxs, esto será demasiado fácil. Para otrxs, puede parecer una muralla infranqueable. Mi objetivo fue que el tono no fuera ni infantil ni elitista. Que haya explicaciones iniciales que sean amables, sin subestimar ni abrumar. También planteo este texto para mis ex estudiantes como una oportunidad de intentar corregir muchos de los errores involuntarios que probablemente he cometido en clases, o para intentar ayudarles a resolver algunas de las muchas confusiones conceptuales que he podido ir regalando a lo largo de años de compartir la búsqueda por el conocimiento.

Y sí, aunque ya existen muchos libros de estadística, siento que este tenía que existir también. Porque es el que yo quería tener cuando empezaba. Porque me permite explicarle a mis papás qué demonios hago con mi vida. Porque quiero contribuir a una alfabetización estadística de nuestros actuales y futuros profesionales. Porque las estadísticas tienen poder: para iluminar, para ocultar, para transformar, y ¿porqué no? también de la sociedad en general. Las estadísticas necesitamos poder leerlas, entenderlas, cuestionarlas. Juntxs.

## Complemento

Este texto no pretende competir con manuales clásicos ni con tratados académicos más densos. Es más bien una curaduría y una traducción. Un resumen con estilo propio, salpicado de ejemplos situados y analogías poco ortodoxas. Para quienes quieran profundizar, recomiendo varios textos que han sido fundamentales en mi camino como estudiante o como profesor, y que sigo sugiriendo a mis estudiantes.

- **Moore (2005)**: "Estadística aplicada básica". Me gusta por su autoridad serena. Ex presidente de la ASA, combina elegancia conceptual con una escritura con opinión. Tiene un tono personal, sobrio pero cercano.
- **Triola (2009)**: Clásico y sólido. Más técnico, más estructurado, aborda con profundidad distribuciones de probabilidad y fundamentos teóricos que aquí solo tocaremos superficialmente.
- **Garriga-Trillo et al. (2009)**: Texto directo, práctico, iberoamericano. Tiene ideas interesantes, como su enfoque sobre variables "cuasicuantitativas", particularmente útil para ciencias sociales.
- **Field (2024)**: Uno de los héroes de mi adolescencia intelectual. Su serie de libros (como *Discovering Statistics Using SPSS/R/JAMOVI*) combina rigor técnico con un estilo narrativo divertido y provocador. Es la estrella de rock de la enseñanza estadística en el Reino Unido.
- **Tabachnick & Fidell (2013)**: Para quienes quieren ir más profundo. Enfoque multivariado serio, estructurado y útil para investigación avanzada o para quienes crean que todo esto es demasiado fácil.

Además, mencionaré recursos web contemporáneos como:

- [Rpsychologist.com](https://rpsychologist.com) y sus visualizaciones interactivas.
- Juegos como *Guess the Correlation* (https://www.guessthecorrelation.com/).
- Videos de YouTube, tutoriales, canales educativos.
- Tal vez hay cosas valiosas en reels o TikToks (la verdad no conozco, pero esta será la oportunidad de encontrarlos)
- Memes y/o brainrots (aunque afortunada y lamentablemente pasan de moda bastante rápido, poniendo en riesgo la gracia de incorporarlos).

<!-- BEGIN:IMG -->

<figure>
  <img src="https://raw.githubusercontent.com/heelgueta/edesc/refs/heads/main/src/img/tralalerotralala.png" alt="Tralalero Tralalá" width="188">
  <figcaption>
    <p>Tralalero Tralalá. Porco dio e porco alá.</p>
  </figcaption>
</figure>

<!-- END:IMG -->


La idea es que este material no sea una cápsula aislada, sino un nodo en una red más amplia de aprendizaje posible. Intentaré que vaya mejorando/creciendo cada semestre.

## Contenidos

La estructura general del libro sigue una lógica secuencial dividida en grandes bloques.
Primero, esta sección inicial de Presentación: para contextualizar, declarar intenciones, señalar referentes y trazar el mapa del libro.

Luego vienen **tres partes centrales**, cada una con su propio hilo conductor:

**I. Introducción**

Comienza desde lo más básico:

1. **Conocer**: por qué importa la estadística, cómo la percibimos, su historia y su función en nuestras disciplinas.
2. **Organizar**: qué son los datos, cómo los distinguimos, categorizamos y disponemos en una matriz de análisis.
3. **Resumir**: primeros pasos de estadística descriptiva univariada —frecuencias, medidas de tendencia central y visualizaciones accesibles.

**II. Númericas**

Trabajar con datos númericos a veces supone algunos desafíos que pueden ser complejos de resolver, por lo que aquí nos ponemos un poquito más densos (sólo un poquito). Esta parte se enfoca exclusivamente en variables cuantitativas:

4. **Posición**: cuantiles, rangos y formas de ubicar valores dentro de una distribución.
5. **Variabilidad**: cómo medir la dispersión, entender la forma de la distribución y reconocer patrones.
6. **Estandarización**: puntajes Z, transformaciones, comparaciones entre sujetos o variables en escalas distintas.

**III. Relaciones**

Hasta ahora todo se enfocaba en el análisis de variables por separado (univariantemente). Ahora miramos pares de variables y exploramos cómo se relacionan entre sí a través de:

7. **Contraste**: análisis comparativo de variables numéricas entre grupos o a lo largo del tiempo.
8. **Cruce**: análisis de contingencias, proporciones y gráficos de comparación para cruces entre variables categóricas.
9. **Asociación**: gráficos de dispersión y análisis de correlación y regresión pertinentes para explorar las relaciones entre variables númericas.

Finalmente el libro termina con un apartado en que se presentan nociones sobre **análisis descriptivo multivariado**, se comentan los **límites de lo descriptivo** y se instala la necesidad del **pensamiento inferencial** como base para un segundo libro.

También planeo incluir secciones adicionales (bonus) con **ejemplos aplicados en más detalle**, usando datos reales y casos concretos de áreas como el mundo pokemon, psicología educacional, salud pública, o temas socio-ambientales, entre otros.

---

Este libro es una invitación. A perderle el miedo a los números, a cuestionar los datos que consumimos, a participar en la conversación pública con más herramientas. A entender que no se trata solo de calcular, sino de **interpretar**, **comunicar**, y **pensar críticamente con datos**.

Bienvenidxs.
