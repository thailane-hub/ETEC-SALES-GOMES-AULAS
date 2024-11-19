<?php

//somar e mostrar os dois valores passados pela URL


// isset = verifica se existe  ! = senão
// Location = indica o endereço a ser retornado

if(!isset($_GET["valora"],$_GET["valorb"])){
    header("Location: formulario.html");
}

if(!is_numeric($_GET["valora"] || is_numeric($_GET["valorb"]))){
    header("location: formulario.html");
}

$soma = ($_GET["valora"] + $_GET["valorb"]);
echo $soma;

// outra forma

// $a = $_GET["valora"];
// $b = $_GET["valorb"];
// $soma = $a + $b;

// echo $soma;

?>