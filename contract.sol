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