<?php

$valor1 = $_GET["valora"];
$valor2 = $_GET["valorb"];

$media = ($valor1 + $valor2)/2;

if($media >= 6){
    echo "O Aluno está APROVADO!";
}
else{
    echo "O Aluno está REPROVADO!";
}

?>