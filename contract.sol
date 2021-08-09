pragma solidity ^0.4.25;

contract ZombieFactory {
    //Declarando el evento que nos hace saber cada vez que un zombi nuevo se ha creado, de forma que pueda mostrarnoslo.
    event NewZombie(uint zombieId, string name, uint dna);
    // Esto se guardará permanentemente en la cadena de bloques
    // Esto determina la cantidad de dígitos, el adn de mi zombie 
    uint dnaDigits = 16;
    // Exponenciación
    uint dnaModulus = 10 ** dnaDigits;

    //Creación de la estructura del personaje
    struct Zombie {
        string name;
        uint dna;
    }

    //Creación de array público (y vacío de momento...) 
    Zombie[] public zombies;

    //Declaración de la función PRIVADA
    function _createZombie(string _name, uint _dna) private {
        // Creando el zombie
        uint id = zombies.push(Zombie(_name, _dna)) - 1;
        // Mostrando el evento
        emit NewZombie(id, _name, _dna);
    }

    //Creación de función view privada 
    //NOTA: los nombres de las funciones PRIVADAS LLEVAN EL "_" al inicio
    function _generateRandomDna(string _str) private view returns (uint) {
        // Genero un número aleatorio usando keccak256
        uint rand = uint(keccak256(abi.encodePacked(_str)));
        return rand % dnaModulus; // Como queremos que el número aleatorio solo tenga 16 dígitos, devolvemos el módulo del mismo
    }

    // Creando la función que genera un zombie Random
    //NOTA: los nombres de las funciones PUBLICAS NO LLEVAN EL "_" al inicio
    function createRandomZombie(string _name) public {
        uint randDna = _generateRandomDna(_name);
        _createZombie(_name, randDna);
    }

}