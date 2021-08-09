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

    struct Nombre {
            string name;
            uint numero ;
        }

<h3>ARREGLOS/ARRAYS</h3>
<p>Cuando quieres tener una colección de algo, puedes usar un array. Hay dos tipos de arrays en Solidity: arrays fijos y arrays dinámicos:</p>

<p>* Array con una longitud fija de 2 elementos:</p>
    uint[2] fixedArray;<br><br>
<p>* Array fijo, con longitud de 5 elementos:</p>
    string[5] stringArray;<br><br>
<p>* Array dinámico, sin longitud fija que puede seguir creciendo:</p>
    uint[] dynamicArray;<br><br>
<p>* Array dinámico, podemos seguir añadiéndole elementos</p>
    Person[] people;<br><br>
<p>--> Crear un array de estructuras puede ser muy útil para guardar datos estructurados en tu contrato, como una base de datos.</p>

<h4>Arrays públicos</h4>
Solidity creará automaticamente una función getter para acceder a él. Otros contratos entonces podrán leer (pero no escribir) este array. Es un patrón de uso muy útil para guardar datos públicos en tu contrato.

    Person[] public people;

<h3>FUNCIONES</h3>
<p>La estructura de una función en solidity se asemeja a:</p>

    Comida[] public comidas;

    function agregarComida(string _name, uint _amount) {
        // crear una nueva `Comida`
        comidas hamburguesa = Comida(_name,_amount);
        // añadir esta persona a nuestro array
        comidas.push(hamburguesa);
    }

    agregarComida("hamburguesa",100)

<p>Combinando en una línea...</p>

    function agregarComida(string _name, uint _amount) {
            comidas.push(Comida(_name,_amount););
        }

    hamburger("nombre",100)

<p>NOTA: La convención es llamar los parámetros de las funciones con nombres que empiezan con un subrayado (_) para de esta forma diferenciarlos de variables globales.</p>

<h4>Funciones Públicas y Privadas</h4>
<p>Las funciones son públicas por defecto. Cualquiera (o cualquier otro contrato) puede llamarla y ejecutar su código.</p>
<p>Esto puede hacer vulnerables los contratos. Es buena práctica marcar las funciones como privadas, y solamente hacer públicas aquellas las que queramos exponer.</p>

<h5>Ejemplo función privada</h5>

    uint[] numbers;

    function _addToArray(uint _number) private {
    numbers.push(_number);
    }

<p>--> Solo otras funciones dentro de tu contrato podrán llamar a esta función y añadir al array numbers.</p>

<p>NOTA: la convención es nombrar las funciones privadas empezando con una barra baja (_).</p>

<h4>Valores de Retorno</h4>
<p>Para devolver un valor desde una función, la declaración es la siguiente:</p>

    string greeting = Hola mundo!";

    function sayHolaMundo() public returns (string) {
        return greeting;
    }

<p>NOTA: En Solidity, la declaración de la función contiene al final tipo de dato del valor de retorno (en este caso string).</p>

<h4>Modificadores de Función</h4>
<p>FUNCIÓN VIEW: significa que solo puede ver los datos pero no modificarlos</p>

    function sayHello() public view returns (string) {

    }

<p>FUNCIÓN PURE: significa que ni siquiera accede a los datos de la aplicación.</p>

    function _multiply(uint a, uint b) private pure returns (uint) {
        return a * b;
    }

<p>En esta función, el valor devuelto depende POR COMPLETO de los parámetros que le pasemos. En este caso deberíamos declarar la función como pure.</p>

<p>NOTA: No siempre es fácil recordar marcar una función como pure o view, por suerte el compilador de Solidity avisa cuándo debemos usar estos modificadores de función.</p>
