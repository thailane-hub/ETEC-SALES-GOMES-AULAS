<?php

class Cachorro{

    public $nome;
    public $cor;
    public $peso;
    private $QtdLatir = 0;

    public function latir(){
        echo $this->nome."AU AU";
        $this->quebrarLinha();
        $this->QtdLatir++;
    }
    
    public function pular(){
        echo $this->nome."yupii";
        $this->quebrarLinha();
    }

    
    public function rosnar(){
        echo $this->nome."ronronron";
        $this->quebrarLinha();
    }

    private function quebrarLinha(){
        echo "<br>";
    }

    public function getQtdLatir(){
        return $this->QtdLatir;
    }

}

$obj1 = new Cachorro();
$obj1->nome = "Chico";
$obj1->cor = "branca";
$obj1->peso = "15";

$obj2 = new Cachorro();
$obj2->nome = "Heros";
$obj2->cor = "branca";
$obj2->peso = "27";

$obj3 = new Cachorro();
$obj3->nome = "Bambi";
$obj3->cor = "preto";
$obj3->peso = "8";

$obj1->pular();
$obj1->latir();
$obj1->latir();
$obj1->latir();

echo $obj1->getQtdLatir();


$obj2->pular();
$obj2->latir();
$obj2->latir();
$obj2->latir();


echo $obj2->getQtdLatir();

$obj3->pular();
$obj3->latir();
$obj3->latir();
$obj3->rosnar();

echo $obj3->getQtdLatir();



?>