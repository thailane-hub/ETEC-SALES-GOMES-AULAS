<?php

class ContaBancaria{

    public $nomeCliente;
    private $saldo = 0;
    private $qtdSaque = 0;
    private $qtdDeposito = 0;

    public function depositar($valor){
        $this-> qtdDeposito++;
        $this-> saldo += $valor;

        // ou  $this-> saldo = $this-> saldo + $valor;
    }
    public function sacar($valor){

        if($valor > $this->saldo){

        throw new Exception("Saldo Insuficiente");

        }


        $this->saldo = $this->saldo - $valor;
        $this->qtdSaque++;
    }
    
    public function getSaldo(){
    
        return $this->saldo;
    
        
    }
    
    public function getQtdSaque(){
    
        return $this->qtdSaque;

    
        
    }
    public function getQtdDeposito(){

        return $this->qtdDeposito;
        
        
    }



}


$Cliente1 = new ContaBancaria();
$Cliente1->nomeCliente = "Maria";
$Cliente1->depositar(5000);

try{
    $Cliente1->(800);
    echo"Saque Realizado Com Sucesso";
    echo "<br>";
}cath(Exception $erro){
    
}


echo $Cliente1->nomeCliente."<br>";

echo $Cliente1->getSaldo()."<br>";
echo $Cliente1->getQtdSaque()."<br>";
echo $Cliente1->getQtdDeposito()."<br>";














?>