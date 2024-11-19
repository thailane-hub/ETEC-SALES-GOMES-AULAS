<?php

$m1 = $_GET["me1"];
$m2 = $_GET["me2"];

$resultado = ($m1 + $m2)/2;


if($resultado >= 6){
    echo "Aprovado";
}

else{
    echo "Reprovado";
}

?>