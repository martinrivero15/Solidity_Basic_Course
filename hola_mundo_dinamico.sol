// SPDX-License-Identifier: MIT
pragma solidity  0.8.24;

contract hola_mundo_dinamico {

    string Saludo_d = "hola mundo Dinamico";

    string public Saludo_e = "Saludo inicial en el despliegue";

    function leerSaludo () public view returns (string memory) {
        return Saludo_d;
    }
    function guardarSaludo (string memory _nuevoSaludo) public  {
        Saludo_d = _nuevoSaludo;
    }

}

//smart contract address 0x95798a27039CACE5e781b75943B30C4cB23A53F5
