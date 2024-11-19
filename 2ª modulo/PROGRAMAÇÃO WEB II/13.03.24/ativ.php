<?php


function resultado($v1,$v2){
    $s = $v1+$v2;
    $sub = $v1-$v2;
    $m = $v1*$v2;
    $d = $v1/$v2;

    echo "A soma é: $s"."</br>"."A subtração é: $sub"."</br>"."A multiplicação é: $m"."</br>"."A divisão é: $d";
    echo "</br>";
    echo "</br>";
}

resultado(2,2);

function exibirNome($nome,$sobrenome){
    echo "$nome $sobrenome";

}

exibirNome("Rodrigo","Fonseca")

?>




