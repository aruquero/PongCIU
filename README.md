# PONG Readme

![N|Solid](https://i.gyazo.com/ccaf3adf3f5f58359c974ece7f04c2f7.png)
# Indice

  - Introducción
  - La aplicación
  - Decisiones de diseño
  - Tutorial
  - Gif sobre el funcionamiento

# Informe

**Introducción**:

En esta primera entrega nos hemos sentado en la creación de nuestro primer proyecto en “processing”, el clásico juego pong. Este ha sido un primer acercamiento a para coger familiaridad y soltura con el lenguaje.

**La aplicación**:

El pong es un juego de dos jugadores, donde cada jugador maneja una paleta rectangular, dicha paleta se mueve verticalmente, como si estuviera “sobra railes”, además de una esfera que se mueve en nuestro tablero. Nuestro objetivo es anotar 4 puntos, un punto significa que la esfera toca el borde lateral de cada jugador, lo que se podría traducir en que, nuestro borde lateral es nuestra portería y nuestra paleta es el portero, haciendo referencia a un deporte tradicional como puede ser el futbol.

![N|Solid](https://i.gyazo.com/090312135fe810fa419fb6287692d70b.png)

En la parte superior izquierda vemos el marcador de ambos jugadores, además de una pequeña ayuda para los nuevos jugadores.
Entrando más en materia, nuestra esfera en primer lugar se mueve horizontalmente hacia el lado contrario de donde rebote, no obstante, si al golpear dicha pelota nuestro golpeo es en movimiento, esta añade una componente “vertical” a su movimiento, lo que produce un movimiento en diagonal. Así mismo, si la esfera toca la parte superior o inferior “rebota” y continua su trayectoria con la componente “vertical” conjugada.
Por otra parte, al anotar un gol, se suma un punto al marcador y se reinician las componentes. Este reinicio implica que todos los elementos vuelven a su posición inicial, se elimina la componente vertical de la esfera y esta comienza moviéndose hacia el lado opuesto del gol.

**Decisiones de diseño**:

Se ha decidido que la velocidad de la esfera sea constante en todo momento, esto se debe a que al incrementar la velocidad llega un punto en donde se pierde el factor habilidad del jugador y se convierte en un juego poco disfrutable. Al mantener una componente constante entra en juego el factor habilidad para conseguir hacer rebotes verticales poco predecibles.
No se ha incluido aceleración en la paleta debido a que el tablero es demasiado pequeño y los tiempos de respuesta demasiado altos como para que esto sea lo suficientemente preciso.

**Tutorial**

Aunque quede indicando en la parte superior de la aplicación, este punto se centra en un breve tutorial de la aplicación. En primer lugar, al pulsar en el botón de "play", necesitamos hacer click en la ventana para poder hacer el "focus" y así poder jugar correctamente. Por otra parte, el jugador 1 dispone de las teclas **q** y **a** para moverse verticalmente, mientras que el jugador 2 dispone de las teclas **o** y **p** para hacer esos mismos movimientos. Los jugadores al golpear la pelota hacen que esta rebote, y al golpearla en movimiento hacen que rebote diagonalmente dependiendo de la dirección del movimiento.
Cada anotación resetea todos los elementos en pantalla y añade 1 punto al jugador correspondiente. El primer jugador en  llegar a 4 puntos es el ganador de la partida.

**Gif sobre el funcionamiento**

![Alt Text](https://i.gyazo.com/1cc2a50d67a88de7ad6032dc755f0bda.gif)


