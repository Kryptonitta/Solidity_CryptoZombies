<h1> Resumen de Cryptozombies</h1>

<a>https://solidity-es.readthedocs.io/es/latest/index.html</a><br>
<a>https://cryptozombies.io/</a>

<h2>INTRODUCCIÓN</h2>

<h3>¿Qué es Solidity?</h3>
<p>Solidity es un lenguaje de alto nivel orientado a contratos. Su sintaxis es similar a la de JavaScript y está enfocado específicamente a la Máquina Virtual de Etehreum (EVM).</p>

<h3>Acerca de cryptozombies</h3> 
<p>Te enseña a crear contratos inteligentes en Solidity mientras construyes tu propio juego cripto-coleccionable de manera interactiva</p>

<h2>SOLIDITY PATH: BEGGINER TO INTERMEDIATE SMART CONTRACTS</h2>

<h3> ¿Qué es un contrato? </h3>
<p>Es el bloque de construcción más básico de las aplicaciones de Ethereum — todas las variables y las funciones pertenecen a un contrato, y este será el punto de partida de todos tus proyectos. </p>

<p>Estructura base de un contrato:</p>

    contract HolaMundo {

    }

<h3>¿Qué es la versión pragma?</h3>
Los “pragmas” son instrucciones para el compilador que indican como este debe operar con el código fuente. 

    pragma solidity ^0.4.25;

    contract ZombieFactory {

    }

<h3>VARIABLES DE ESTADO</h3> 
Las Variables de estado se guardan permanentemente en el almacenamiento del contrato. Se escriben en la cadena de bloques de Ethereum. Es como en escribir en una base de datos.

<h3>TIPOS DE DATOS</h3>
<h4>1) Números enteros</h4>
<p>UINT: es un entero sin signo(no-negativo).</p>
<p>INT: para números enteros con signo.</p>

<p>Nota: En Solidity, uint es realmente un alias para uint256, un número entero de 256-bits. Puedes declarar uints con menos bits — uint8, uint16, uint32, etc.. Pero por lo general usaremos uint excepto en casos específicos.</p>

<h4>2)Strings</h4>
<p>Se usan para cadenas de texto UTF-8 de longitud arbitraria. Ejemplo: string greeting = "¡Hola Mundo!"</p>


<h3>OPERACIONES</h3>
<p>--> Suma: x + y</p>
<p>--> Resta: x - y</p>
<p>--> Multiplicación: x * y</p>
<p>--> División: x / y</p>
<p>--> Módulo: x % y (por ejemplo, 13 % 5 es 3, ya que al dividir 13 entre 5, 3 es el resto)</p>
<p>--> Operador exponencial: x**y = 5^2 = 25</p>

<h3>ESTRUCTURAS --> STRUCTS (estructuras de datos)</h3>
Las estructuras te permiten crear tipos de datos más complejos que tienen varias propiedades.


