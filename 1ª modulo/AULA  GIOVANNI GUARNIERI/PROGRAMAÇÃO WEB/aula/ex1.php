<?php


function calcular($v1,$v2){

    $soma = $v1+$v2;
    $sub = $v1-$v2;
    $mul = $v1 * $v2;
    $div = $v1/$v2;
    echo" A soma é $soma". "<br/> A subtração é $sub". "<br/> A multiplicação é $mul". "<br/> A Divisão é $div";
}


function exibirNome($nome,$sobrenome){
    echo "Bem Vinda $nome $sobrenome !";
}

calcular(3,3);
echo"<br/>";
exibirNome("Thailane","Santos");



?>