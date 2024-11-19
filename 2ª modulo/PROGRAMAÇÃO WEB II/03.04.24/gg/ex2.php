<?php


$a = $_GET["ma"];
$b = $_GET["mb"];

$soma = ($a + $b)/2;


if($soma >= 6){
    echo"APROVADO";
}
else{
    echo"REPROVADO";
}

?>