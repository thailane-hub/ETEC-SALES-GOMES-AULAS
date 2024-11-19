<?php
$nome = $_GET["nome"];
$salario = $_GET["salario"];
$aumento = $_GET["aumento"];
$total = $salario + ($salario * $aumento / 100);

echo  "Nome: $nome </br>  Salário antigo: R$ $salario <br> Porcentagem de aumento: $aumento% </br>salario novo: R$ $total";


?>      