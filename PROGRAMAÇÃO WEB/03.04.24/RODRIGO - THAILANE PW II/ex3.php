<?php

$name = $_GET["nome"];
$s = $_GET["salario"];
$a = $_GET["aumento"];

$r = $s*(1+($a/100));

function exibir($n, $sa, $au, $re){
    echo "<h1>".$n."<h1>";
    echo "<h2>"."Salario Antigo: R$ ".$sa." Reais"."<h2>";
    echo "<h2>"."% de aumento: ".$au."<h2>";
    echo "<h2>"."Novo Salario: ".$re." Reais"."<h2>";

}

exibir($name, $s, $a, $r);












?>