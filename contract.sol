pragma solidity ^0.4.19;

contract ZombieFactory {
    // Esto se guardará permanentemente en la cadena de bloques
    // Esto determina la cantidad de dígitos, el adn de mi zombie 
    uint dnaDigits = 16;
    // Exponenciación
    uint dnaModulus = 10**dnaDigits;

    //Creación de la estructura del personaje
    struct Zombie {
        string name;
        uint dna ;
    }

    //Creación de array público (y vacío de momento...) 
    Zombie[] public zombies;

    //Declaración de la función PRIVADA
    function _createZombie(string _name, uint _dna) private{
        // Creando el zombie
        zombies.push(Zombie(_name,_dna));
    }

    //Creación de función view privada 
    function _generateRandomDna(string _str) private view returns (uint) {
        // Genero un número aleatorio usando keccak256
        uint rand = uint(keccak256(_str));
        return rand % dnaModulus; // Como queremos que el número aleatorio solo tenga 16 dígitos, devolvemos el módulo del mismo
    }

}