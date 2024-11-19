<?php

$valor1 = $_GET["valora"];
$valor2 = $_GET["valorb"];
$valor3 = $_GET["valorc"];


if(($valor1 > $valor2) && ($valor1 > $valor3)) {
    echo " O Maior Valor é $valor1";


}else if(($valor2 > $valor1)&& ($valor2 > $valor3)) {
    echo " O Maior Valor é $valor2";
}
else{
    echo " O Maior Valor é $valor3";
}

?>