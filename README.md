### INSTITUTO TECNOLÓGICO DE BUENOS AIRES

# Trabajo Práctico de Laboratorio Nr. 2

## Electrónica 3 - 2018

Este trabajo práctico corresponde a los temas de la Unidad 2:

- Tecnología de circuitos lógicos
- Multivibradores
- Contadores secuenciales
- Almacenamiento digital

Consideraciones importantes:

- Fecha de entrega: 18 de Octubre de 2018 a las 00:00hs.
- Modo de entrega: Se tomará como entrega el último commit en el branch master del repositorio del
    grupo previo al horario de entrega.
- Evaluación: La nota del trabajo práctico tendrá una nota por su contenido, prolijidad, ponderada por
    la calidad de redacción tanto de texto como de código.
- El informe NO deberá superar las 10 páginas y se tomará como criterio de evaluación el análisis de las
    mediciones, exposición de los resultados, capacidad de síntesis, conclusiones, ortografía y prolijidad.
- Compilación del informe y programas: Tanto el informe como los programas que se soliciten en el
    trabajo práctico deberán compilarse mediante el uso de make (opcionalmente cmake) asistidos por
    los ejemplos vistos en clase.
- Testing: Todos los programas que se escriban deberán contar con sus respectivos tests, asistidos por
    los ejemplos vistos en clase.


## EJERCICIO 1

Diseñe e implemente compuertas NOT utilizando transistores BJT y MOSFET. Es de interés que realice un
análisis exploratorio de ambas tecnologías y posibles variantes de cada circuito.

- Implemente dos variantes para cada tecnología de transistor.
- Mida como mínimo los siguientes parámetros:
    **-** High-level input voltage
    **-** Low-level input voltage
    **-** High-level output voltage
    **-** Low-level output voltage
    **-** Noise Margin
    **-** Propagation delay High-to-Low
    **-** Propagation delay Low-to-High
    **-** Transition time High-to-Low
    **-** Transition time Low-to-High
    **-** Maximum output current
- Realice todas las mediciones en dos circunstancias: Sin carga y con carga de 1nF.
- Discuta fortalezas y debilidades de cada circuito.

## EJERCICIO 2

Utilizando las hojas de datos del 74HC02, 74HCT02 y 74LS02 comparar los márgenes de ruido. Analizar que
sucede si cargamos una compuerta de tecnología LS con una HC y viceversa. (Utilice el márgen de ruido
para extraer conclusiones). Mida y analice si encuentra alguna diferencia. ¿Qué ocurre con el fanout? ¿Qué
sucede si repetimos la experiencia usando la compuerta de tecnología HCT?

## EJERCICIO 3

Simplificar e implementar la siguiente tabla de verdad con compuertas lógicas. ¿Qué problemas surgen al
utilizar una metodología menor costo? Respaldar las mediciones con un adecuado análisis del problema.

```
A B C Y
0 0 0 0
0 0 1 1
0 1 0 1
0 1 1 1
1 0 0 0
1 0 1 1
1 1 0 0
1 1 1 0
```
## EJERCICIO 4

Medir los tiempos de propagación, rise time y fall time de una compuerta 74HC02 en vacío. Repetir el
experimento implementando el siguiente circuito. En caso de haber diferencias, justificar. Aumente la
frecuencia del generador de señales a 100KHz (cuidado con el integrado, puede calentar) y medir la tensión
de alimentación. Explicar lo observado, tanto en la tensión de alimentación como en la temperatura del IC.


Repetir la experiencia conectando capacitores entre dichos terminales (justificar la elección de los mismos).
Extraer conclusiones.

## EJERCICIO 5

Implementar los siguiente circuitos y observar las salidas. Extraer conclusiones.

Se unen ahora ambas mitades para obtener el siguiente circuito, sin emhargo el mismo no presenta el
comportamiento deseado. ¿Qué clase de problemas puede presentar? Investigue posibles soluciones e
implemente una.

## EJERCICIO 6

Diseñe e implemente un Flip-Flop tipo D y un Latch SR a partir de compuertas lógicas discretas. Mida
aquellos parámetros que considere importantes para la caracterización de su comportamiento (justificando
adecuadamente) y compare con equivalentes comerciales. ¿Qué diferencias observa?


## EJERCICIO 7

Implemente mediante compuertas lógicas discretas un contador sincrónico y asincrónico de 3 bits. Destaque
las diferencias de funcionamiento entre ambos y determine la máxima velocidad de operación de cada uno
de ellos.


## EJERCICIO 8

(NOTA: Este ejercicio no suma al límite de hojas del TP, puede ser tan largo como consideren adecuado.) Se
desea implementar en forma discreta un circuito capaz de realizar mediciones de distancia utilizando un
HC-SR04. Valide el diseño mediante simulaciones apropiadas en Verilog.
El circuito tendrá las siguientes entradas y salidas:

- trigger (INPUT) Un flanco positivo dispara la medición de distancia. El circuito no deberá poseer
    retriggering.
- trigger_enable (INPUT) Entrada de habilitación de la señal de trigger.
- meas[7..0] (OUTPUT) Valor de tiempo medido en unidades de 100 microsegundos.
- meas_ready (OUTPUT) Valor que indica que la medición fue exitosa.

```
Ayuda: Realice un adecuado diseño en diagrama en bloques con sus respectivos tests.
```
