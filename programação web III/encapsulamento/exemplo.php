<?php

class Cachorro{
    private $nome;
    private $cor;
    private $peso;

    public function setNome($nome){
        $this->nome = $nome;

        // setNome função que serve para defenir o valor de alguma coisa
    }

    public function getNome(){

        return "Nome:" .strtoupper($this->nome);

        // getNome função que serve para pegar
    }

}

$obj1 = new Cachorro();
$obj1->setNome("lobo");
$obj1->cor = "marrom";
echo $obj1->getNome();





?>