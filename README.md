<h1> Los apuntes de Cryptozombies.io</h1>

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

<h3>KECCAK 256 Y ENCASILLADOS DE TIPO</h3>

<p>EXTRA -- > ¿QUÉ ES EL HASH?<br>Es un algoritmo matemático que transforma cualquier bloque arbitrario de datos en una nueva serie de caracteres con una longitud fija. Independientemente de la longitud de los datos de entrada, el valor hash de salida tendrá siempre la misma longitud. Es una función criptográfica.</p>

<h4>keccak 256</h4>
<p>Es una función hash de Ethereum hash, una versión de SHA3. Una función hash lo que hace es mapear una cadena de caracteres a un número aleatorio hexadecimal de 256-bits. Un pequeño cambio en la cadena de texto producirá un hash completamente distinto. <br> Es muy útil para muchas cosas, pero por ahora vamos a usarlo solamente para generar un número cuasi-aleatorio.</p>

<h4>Casteo de variables (conversión)</h4>
<p>A veces es necesario convertir entre tipos de datos. Por ejemplo en el siguiente caso:</p>

    uint8 a = 5;
    uint b = 6;
    // dará un error porque a * b devuelve un `uint` y no un `uint8`:
    uint8 c = a * b;
    // debemos de forzar la variable b para que sea convertida a `uint8`
    uint8 c = a * uint8(b);
    
<p>Casteándolo a uint8 funcionará y el compilador no nos dará error.</p>

<h3>EVENTOS</h3>
<p>Los eventos son la forma en la que nuestro contrato comunica que algo sucedió en la cadena de bloques a la interfaz de usuario, el cual puede estar 'escuchando' ciertos eventos y hacer algo cuando sucedan.</p>

    // declara el evento
    event IntegersAdded(uint x, uint y, uint result);

    function add(uint _x, uint _y) public {
    uint result = _x + _y;
    // lanza el evento para hacer saber a tu aplicación que la función ha sido llamada:
    emit IntegersAdded(_x, _y, result);
    return result;
    }

<p>La aplicación con la interfaz de usuario podría entonces estar escuchando el evento. Una implementación en JavaScript sería así:</p>

    YourContract.IntegersAdded(function(error, result) {
    // hacer algo con `result`
    }

<h3>/ ---------- FIN CHAPTER 01 ---------- / </h3>
<p>Hasta acá logré hacer mi zombie y lo llamé Krypto. Si querés ver cómo me quedó go to the link!</p>

<p> <a href="https://share.cryptozombies.io/es/lesson/1/share/krypto?id=Y3p8MTIzMjQy">Krypto Zombie 🧟‍♀️</a></p>

<h3>MAPEOS Y DIRECCIONES</h3>
<h4>Direcciones</h4>
<p>Es como la dirección de una cuenta bancaria. Tiene un balance de Ether (la divisa utilizada en la blockchain de Ethereum) y puede hacer transferencias a otras cuentas bancarias. Esta dirección está asociada a un usuario específico (o un contrato inteligente). El número es un identificador único se asemeja a algo así: </p>

<p>0x0cE446255506E92DF41614C46F1d6df9Cc969183</p>

<h4>Mapeos</h4>
<p>Los mapeos son otra forma de organizar los datos en Solidity. <br> Es esencialmente una asociación valor-clave para guardar y ver datos.</p>

// Para una aplicación financial, guardamos un uint con el balance de su cuenta:
mapping (address => uint) public accountBalance;
// O podría usarse para guardar / ver los usuarios basados en ese userId
mapping (uint => string) userIdToName;

<h3>MSG.SENDER</h3>
<p>Es una de las variables globales que podemos encontrar en Solidity. Hace referencia a la dirección de la persona (o el contrato inteligente) que ha llamado a esa función.</p>

<p><strong>En Solidity, la ejecución de una función necesita empezar con una llamada exterior. Un contrato se sentará en la blockchain sin hacer nada esperando a que alguien llame a una de sus funciones. Así que siempre habrá un msg.sender.</strong></p>

    mapping (address => uint) favoriteNumber;

    function setMyNumber(uint _myNumber) public {
    // Actualiza tu mapeo `favoriteNumber` para guardar `_myNumber` dentro de `msg.sender`
    favoriteNumber[msg.sender] = _myNumber;
    // ^ La sintaxis para guardar datos en un mapeo es como en los arrays
    }

    function whatIsMyNumber() public view returns (uint) {
    // Conseguimos el valor guardado en la dirección del emisor
    // Será `0` si el emisor no ha llamado a `setMyNumber` todavía
    return favoriteNumber[msg.sender];
    }

<p>En el ejemplo, cualquiera puede llamar a setMyNumber y guardar un uint en nuestro contrato. Y cuando llamen a whatIsMyNumber les va a devolver el uint guardado.</p>

<p>msg.sender da la seguridad de la blockchain de Ethereum. La única forma de que otra persona edite la información de esta sería robandole la clave privada asociada a la dirección Ethereum.</p>