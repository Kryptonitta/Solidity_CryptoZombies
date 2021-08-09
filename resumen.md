COMPENDIO DE INFORMACIÓN BASADA EN LA DOCUMENTACIÓN OFICIAL DE SOLIDITY + CRYPTOZOMBIES

https://solidity-es.readthedocs.io/es/latest/index.html
https://cryptozombies.io/

/ ----- INTRODUCCIÓN ----- /

¿Qué es Solidity?
Solidity es un lenguaje de alto nivel orientado a contratos. Su sintaxis es similar a la de JavaScript y está enfocado específicamente a la Máquina Virtual de Etehreum (EVM).

Acerca de cryptozombies 
Te enseña a crear contratos inteligentes en Solidity mientras construyes tu propio juego cripto-coleccionable de manera interactiva

/ ----- Solidity Path: Beginner to Intermediate Smart Contracts ----- /

¿Qué es un contrato?
Es el bloque de construcción más básico de las aplicaciones de Ethereum — todas las variables y las funciones pertenecen a un contrato, y este será el punto de partida de todos tus proyectos.

Estructura base de un contrato:

    contract HolaMundo {

    }

¿Qué es la versión pragma? 
Los “pragmas” son instrucciones para el compilador que indican como este debe operar con el código fuente. 

    pragma solidity ^0.4.25;

    contract ZombieFactory {

    }

VARIABLES DE ESTADO 
Las Variables de estado se guardan permanentemente en el almacenamiento del contrato. Se escriben en la cadena de bloques de Ethereum. Es como en escribir en una base de datos.

TIPOS DE DATOS:
1)Números enteros
UINT: es un entero sin signo(no-negativo). 
INT: para números enteros con signo.

Nota: En Solidity, uint es realmente un alias para uint256, un número entero de 256-bits. Puedes declarar uints con menos bits — uint8, uint16, uint32, etc.. Pero por lo general usaremos uint excepto en casos específicos.

2)Strings
Se usan para cadenas de texto UTF-8 de longitud arbitraria. Ejemplo: string greeting = "¡Hola Mundo!"


OPERACIONES:
--> Suma: x + y
--> Resta: x - y,
--> Multiplicación: x * y
--> División: x / y
--> Módulo: x % y (por ejemplo, 13 % 5 es 3, ya que al dividir 13 entre 5, 3 es el resto)
--> Operador exponencial: x**y = 5^2 = 25

ESTRUCTURAS --> STRUCTS (estructuras de datos):
Las estructuras te permiten crear tipos de datos más complejos que tienen varias propiedades.


