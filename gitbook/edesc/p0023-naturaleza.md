#### Naturaleza

Otra forma fundamental de clasificar las variables -y una de las más útiles al momento de analizarlas- tiene que ver con la **naturaleza** del dato que producen. Es decir, con el tipo de información que entregan cuando se miden. Aquí entramos a una distinción clásica: **variables numéricas** versus **variables categóricas**.

Una **variable numérica** (comúnmente también llamada *variable cuantitativa*) es aquella que genera valores numéricos con los que tiene sentido realizar operaciones aritméticas. Por ejemplo: sumar, restar, calcular promedios, analizar desviaciones. Variables como la **edad**, el **ingreso mensual**, el **peso corporal**, o el **tiempo de reacción** son ejemplos típicos: no sólo se expresan con números, sino que además esos números representan cantidades medibles.

Una **variable categórica** (también llamada *variable cualitativa*) no se presta para hacer ese tipo de cálculos. En vez de números que significan "cuánto", entrega categorías que significan "cuál". Ejemplos: **sexo/género**, **tipo de música favorita**, **región de residencia**, **diagnóstico clínico**. A veces esas categorías están etiquetadas con números -como cuando 1 = masculino, 2 = femenino- pero eso no significa que el 2 "valga más" que el 1. Son sólo etiquetas.

{% hint style="info" %}
Este libro prefiere hablar de **variables numéricas** y **categóricas** en vez de cuantitativas y cualitativas, para evitar una confusión común: pensar que las variables cualitativas se estudian solo con metodología cualitativa, o que lo cuantitativo se reduce a las variables cuantitativas. En realidad, muchos estudios cuantitativos usan variables de ambos tipos. Y el lenguaje claro ayuda.
{% endhint %}

Dentro de las variables numéricas podemos hacer una distinción adicional:

- Las **variables continuas** son aquellas que pueden tomar *cualquier valor dentro de un rango*. No hay "saltos" entre valores posibles. Ejemplo clásico: la **estatura**. Podés medirla en metros, en centímetros, en milímetros, e incluso con decimales. Cuanto más precisa sea tu herramienta, más cifras podés registrar. Si alguien mide 1,72 m, no hay ningún problema en pensar que otra persona puede medir 1,725 m.

- Las **variables discretas**, en cambio, toman valores contables y no tienen valores intermedios entre ellos. Como cuando contamos **número de hijos**, **cantidad de veces que fuiste al cine este mes**, o **cuántas tazas de café tomaste esta semana**. Nadie tomó 2,37 tazas de café. O tomaste 2, o tomaste 3. (Si tomaste media taza, igual cuenta como 1.)

Pero -y esto es clave- la distinción no siempre es tan clara. Por ejemplo: la **edad**. En muchos estudios se registra como un número entero (años cumplidos), pero perfectamente podríamos medirla con más precisión: años con decimales, meses, semanas, días. Para un pediatra, un bebé puede tener 1,3 semanas de edad. Para un estudio de adultos mayores, el año es suficiente. Así que una misma variable puede tratarse como continua o discreta, según el contexto.

¿Y qué pasa con variables como el RUT? Tiene números, sí, pero ¿es una variable numérica? No necesariamente. El RUT no se usa para sumar, promediar o calcular desviaciones. Es un identificador. Más aún: si incluye letras (como la K del dígito verificador), ya ni siquiera es numérico en forma. Este tipo de variables son auxiliares, sirven para identificar casos, y muchas veces el software las trata como *categóricas*, aunque no describan una característica en sentido estricto.

Entonces, ¿por qué es importante esta clasificación? Porque el tipo de variable condiciona qué herramientas estadísticas podemos usar. Si una variable es numérica, vamos a poder calcular promedios, desviaciones, correlaciones, histogramas. Si es categórica, vamos a poder hacer tablas de frecuencia, proporciones, gráficos de barras, etc. No se trata de imponer una regla, sino de usar el método que tiene sentido para el tipo de dato que tenemos.

Y aunque hay muchas excepciones y bordes difusos -como veremos más adelante con las variables "cuasicuantitativas"-, la distinción entre numéricas y categóricas ya nos da una base importante para organizar y pensar nuestros análisis.

