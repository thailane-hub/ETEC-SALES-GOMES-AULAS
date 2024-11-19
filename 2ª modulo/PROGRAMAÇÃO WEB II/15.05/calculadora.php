

<?php

if(!isset($_GET["valora"], $_GET["valorb"])){
    header("location:  aula.html");
}

if(!is_numeric($_GET["valora"]) || !is_numeric($_GET["valorb"])){
    header("location:  aula.html");
}

$a = $_GET["valora"];
$b = $_GET["valorb"];
$soma = $a + $b;
echo $soma;

?>