<?php

$nome = $_GET["nome"];
$salario = $_GET["salario"];
$aumento = $_GET["aumento"];

$novosalario = $salario + ($salario * $aumento/100);

echo "$nome <br> Salário Antigo: R$ $salario,00 <br> Porcentagem de Aumento: $aumento% <br> Novo Salário: R$ $novosalario,00";


?>